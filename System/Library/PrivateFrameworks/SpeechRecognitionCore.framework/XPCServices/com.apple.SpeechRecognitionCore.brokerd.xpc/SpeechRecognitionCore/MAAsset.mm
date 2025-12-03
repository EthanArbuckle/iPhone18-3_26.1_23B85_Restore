@interface MAAsset
- (BOOL)_es_isCompatibleWithThisDevice;
- (id)_es_contentVersion;
- (id)_es_description;
- (id)_es_language;
- (id)_es_masteredVersion;
- (id)_es_path;
- (id)_es_quasarDir;
- (id)_es_quasarModelPath;
- (int64_t)_es_compareByVersion:(id)version;
- (int64_t)_es_requiredCapabilityIdentifier;
- (int64_t)_es_status;
@end

@implementation MAAsset

- (int64_t)_es_requiredCapabilityIdentifier
{
  attributes = [(MAAsset *)self attributes];
  v3 = [attributes objectForKey:@"RequiredCapabilityIdentifier"];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (BOOL)_es_isCompatibleWithThisDevice
{
  _es_requiredCapabilityIdentifier = [(MAAsset *)self _es_requiredCapabilityIdentifier];
  if (_es_requiredCapabilityIdentifier > AFDeviceHighestLanguageModelCapabilityIdentifier())
  {
    return 0;
  }

  v5 = +[_EARSpeechRecognizer minimumSupportedConfigurationVersion];
  [v5 floatValue];
  v7 = v6;

  v8 = +[_EARSpeechRecognizer maximumSupportedConfigurationVersion];
  [v8 floatValue];
  v10 = v9;

  attributes = [(MAAsset *)self attributes];
  v12 = [attributes objectForKey:@"FormatVersion"];
  [v12 floatValue];
  v14 = v13;

  return v14 <= v10 && v14 >= v7;
}

- (id)_es_description
{
  _es_contentVersion = [(MAAsset *)self _es_contentVersion];
  _es_masteredVersion = [(MAAsset *)self _es_masteredVersion];
  if ([(MAAsset *)self _es_isInstalled])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  _es_language = [(MAAsset *)self _es_language];
  if ([(MAAsset *)self _es_isInstalled])
  {
    _es_path = [(MAAsset *)self _es_path];
    v8 = [NSString stringWithFormat:@"Asset: content version: %@, mastered version %@, installed %@, language: %@, path: %@", _es_contentVersion, _es_masteredVersion, v5, _es_language, _es_path];
  }

  else
  {
    v8 = [NSString stringWithFormat:@"Asset: content version: %@, mastered version %@, installed %@, language: %@, path: %@", _es_contentVersion, _es_masteredVersion, v5, _es_language, &stru_10001D3E0];
  }

  return v8;
}

- (id)_es_language
{
  attributes = [(MAAsset *)self attributes];
  v3 = [attributes objectForKey:@"Language"];

  return v3;
}

- (id)_es_masteredVersion
{
  attributes = [(MAAsset *)self attributes];
  v3 = [attributes objectForKey:ASAttributeMasteredVersion];

  return v3;
}

- (id)_es_contentVersion
{
  attributes = [(MAAsset *)self attributes];
  v3 = [attributes objectForKey:ASAttributeContentVersion];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    stringValue = v3;
LABEL_5:
    v5 = stringValue;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    stringValue = [v3 stringValue];
    goto LABEL_5;
  }

  v5 = @"0";
LABEL_7:

  return v5;
}

- (id)_es_path
{
  getLocalUrl = [(MAAsset *)self getLocalUrl];
  if (getLocalUrl)
  {
    getLocalUrl2 = [(MAAsset *)self getLocalUrl];
    path = [getLocalUrl2 path];
  }

  else
  {
    path = 0;
  }

  return path;
}

- (int64_t)_es_status
{
  state = [(MAAsset *)self state];
  if ((state - 1) > 3)
  {
    return 2;
  }

  else
  {
    return qword_100014E80[(state - 1)];
  }
}

- (id)_es_quasarModelPath
{
  _es_path = [(MAAsset *)self _es_path];
  if (_es_path && (-[MAAsset attributes](self, "attributes"), v4 = objc_claimAutoreleasedReturnValue(), [v4 objectForKey:@"QuasarDir"], v5 = objc_claimAutoreleasedReturnValue(), v4, v5))
  {
    v6 = [_es_path stringByAppendingPathComponent:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_es_quasarDir
{
  attributes = [(MAAsset *)self attributes];
  v3 = [attributes objectForKey:@"QuasarDir"];

  return v3;
}

- (int64_t)_es_compareByVersion:(id)version
{
  versionCopy = version;
  _es_contentVersion = [(MAAsset *)self _es_contentVersion];
  _es_contentVersion2 = [versionCopy _es_contentVersion];
  v7 = [_es_contentVersion compare:_es_contentVersion2 options:64];

  if (!v7)
  {
    _es_masteredVersion = [(MAAsset *)self _es_masteredVersion];
    _es_masteredVersion2 = [versionCopy _es_masteredVersion];
    v10 = _es_masteredVersion2;
    if (_es_masteredVersion && _es_masteredVersion2)
    {
      v7 = [_es_masteredVersion compare:_es_masteredVersion2 options:64];
      if (!v7)
      {
        goto LABEL_12;
      }
    }

    else if (!_es_masteredVersion || _es_masteredVersion2)
    {
      if (_es_masteredVersion || !_es_masteredVersion2)
      {
LABEL_12:
        _es_path = [(MAAsset *)self _es_path];
        _es_path2 = [versionCopy _es_path];
        v13 = _es_path2;
        if (_es_path && _es_path2)
        {
          v7 = [_es_path compare:_es_path2];
          if (!v7)
          {
LABEL_22:
            v7 = 0;
          }
        }

        else if (!_es_path || _es_path2)
        {
          if (_es_path || !_es_path2)
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