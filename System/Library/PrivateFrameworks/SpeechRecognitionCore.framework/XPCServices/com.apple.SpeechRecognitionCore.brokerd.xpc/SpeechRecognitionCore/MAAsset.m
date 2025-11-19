@interface MAAsset
- (BOOL)_es_isCompatibleWithThisDevice;
- (id)_es_contentVersion;
- (id)_es_description;
- (id)_es_language;
- (id)_es_masteredVersion;
- (id)_es_path;
- (id)_es_quasarDir;
- (id)_es_quasarModelPath;
- (int64_t)_es_compareByVersion:(id)a3;
- (int64_t)_es_requiredCapabilityIdentifier;
- (int64_t)_es_status;
@end

@implementation MAAsset

- (int64_t)_es_requiredCapabilityIdentifier
{
  v2 = [(MAAsset *)self attributes];
  v3 = [v2 objectForKey:@"RequiredCapabilityIdentifier"];
  v4 = [v3 integerValue];

  return v4;
}

- (BOOL)_es_isCompatibleWithThisDevice
{
  v3 = [(MAAsset *)self _es_requiredCapabilityIdentifier];
  if (v3 > AFDeviceHighestLanguageModelCapabilityIdentifier())
  {
    return 0;
  }

  v5 = +[_EARSpeechRecognizer minimumSupportedConfigurationVersion];
  [v5 floatValue];
  v7 = v6;

  v8 = +[_EARSpeechRecognizer maximumSupportedConfigurationVersion];
  [v8 floatValue];
  v10 = v9;

  v11 = [(MAAsset *)self attributes];
  v12 = [v11 objectForKey:@"FormatVersion"];
  [v12 floatValue];
  v14 = v13;

  return v14 <= v10 && v14 >= v7;
}

- (id)_es_description
{
  v3 = [(MAAsset *)self _es_contentVersion];
  v4 = [(MAAsset *)self _es_masteredVersion];
  if ([(MAAsset *)self _es_isInstalled])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v6 = [(MAAsset *)self _es_language];
  if ([(MAAsset *)self _es_isInstalled])
  {
    v7 = [(MAAsset *)self _es_path];
    v8 = [NSString stringWithFormat:@"Asset: content version: %@, mastered version %@, installed %@, language: %@, path: %@", v3, v4, v5, v6, v7];
  }

  else
  {
    v8 = [NSString stringWithFormat:@"Asset: content version: %@, mastered version %@, installed %@, language: %@, path: %@", v3, v4, v5, v6, &stru_10001D3E0];
  }

  return v8;
}

- (id)_es_language
{
  v2 = [(MAAsset *)self attributes];
  v3 = [v2 objectForKey:@"Language"];

  return v3;
}

- (id)_es_masteredVersion
{
  v2 = [(MAAsset *)self attributes];
  v3 = [v2 objectForKey:ASAttributeMasteredVersion];

  return v3;
}

- (id)_es_contentVersion
{
  v2 = [(MAAsset *)self attributes];
  v3 = [v2 objectForKey:ASAttributeContentVersion];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
LABEL_5:
    v5 = v4;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 stringValue];
    goto LABEL_5;
  }

  v5 = @"0";
LABEL_7:

  return v5;
}

- (id)_es_path
{
  v3 = [(MAAsset *)self getLocalUrl];
  if (v3)
  {
    v4 = [(MAAsset *)self getLocalUrl];
    v5 = [v4 path];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int64_t)_es_status
{
  v2 = [(MAAsset *)self state];
  if ((v2 - 1) > 3)
  {
    return 2;
  }

  else
  {
    return qword_100014E80[(v2 - 1)];
  }
}

- (id)_es_quasarModelPath
{
  v3 = [(MAAsset *)self _es_path];
  if (v3 && (-[MAAsset attributes](self, "attributes"), v4 = objc_claimAutoreleasedReturnValue(), [v4 objectForKey:@"QuasarDir"], v5 = objc_claimAutoreleasedReturnValue(), v4, v5))
  {
    v6 = [v3 stringByAppendingPathComponent:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_es_quasarDir
{
  v2 = [(MAAsset *)self attributes];
  v3 = [v2 objectForKey:@"QuasarDir"];

  return v3;
}

- (int64_t)_es_compareByVersion:(id)a3
{
  v4 = a3;
  v5 = [(MAAsset *)self _es_contentVersion];
  v6 = [v4 _es_contentVersion];
  v7 = [v5 compare:v6 options:64];

  if (!v7)
  {
    v8 = [(MAAsset *)self _es_masteredVersion];
    v9 = [v4 _es_masteredVersion];
    v10 = v9;
    if (v8 && v9)
    {
      v7 = [v8 compare:v9 options:64];
      if (!v7)
      {
        goto LABEL_12;
      }
    }

    else if (!v8 || v9)
    {
      if (v8 || !v9)
      {
LABEL_12:
        v11 = [(MAAsset *)self _es_path];
        v12 = [v4 _es_path];
        v13 = v12;
        if (v11 && v12)
        {
          v7 = [v11 compare:v12];
          if (!v7)
          {
LABEL_22:
            v7 = 0;
          }
        }

        else if (!v11 || v12)
        {
          if (v11 || !v12)
          {
            goto LABEL_22;
          }

          v7 = -1;
        }

        else
        {
          v7 = 1;
        }

        goto LABEL_24;
      }

      v7 = -1;
    }

    else
    {
      v7 = 1;
    }

LABEL_24:
  }

  return v7;
}

@end