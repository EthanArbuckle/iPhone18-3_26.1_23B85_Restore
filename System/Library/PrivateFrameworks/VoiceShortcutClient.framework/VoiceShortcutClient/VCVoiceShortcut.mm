@interface VCVoiceShortcut
- (BOOL)hasBeenModified;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (VCVoiceShortcut)initWithCoder:(id)a3;
- (VCVoiceShortcut)initWithIdentifier:(id)a3 phrase:(id)a4 shortcutName:(id)a5 shortcutDescription:(id)a6 associatedAppBundleIdentifier:(id)a7 dateCreated:(id)a8 dateLastModified:(id)a9 lastRunDate:(id)a10 runEventsCount:(id)a11 shortcut:(id)a12 keyImageData:(id)a13 error:(id *)a14;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VCVoiceShortcut

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(VCVoiceShortcut *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];

  v6 = [(VCVoiceShortcut *)self phrase];
  [v4 encodeObject:v6 forKey:@"phrase"];

  v7 = [(VCVoiceShortcut *)self shortcutName];
  [v4 encodeObject:v7 forKey:@"shortcutName"];

  v8 = [(VCVoiceShortcut *)self shortcutDescription];
  [v4 encodeObject:v8 forKey:@"shortcutDescription"];

  v9 = [(VCVoiceShortcut *)self associatedAppBundleIdentifier];
  [v4 encodeObject:v9 forKey:@"associatedAppBundleIdentifier"];

  v10 = [(VCVoiceShortcut *)self dateCreated];
  [v4 encodeObject:v10 forKey:@"dateCreated"];

  v11 = [(VCVoiceShortcut *)self dateLastModified];
  [v4 encodeObject:v11 forKey:@"dateLastModified"];

  v12 = [(VCVoiceShortcut *)self lastRunDate];
  [v4 encodeObject:v12 forKey:@"lastRunDate"];

  v13 = [(VCVoiceShortcut *)self runEventsCount];
  [v4 encodeObject:v13 forKey:@"runEventsCount"];

  v14 = [(VCVoiceShortcut *)self keyImage];
  v15 = [v14 _imageData];
  [v4 encodeObject:v15 forKey:@"keyImageData"];

  v16 = [(VCVoiceShortcut *)self shortcut];
  [v4 encodeObject:v16 forKey:@"shortcut"];
}

- (VCVoiceShortcut)initWithCoder:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"phrase"];
  v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shortcutName"];
  v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shortcutDescription"];
  v7 = v5;
  v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"associatedAppBundleIdentifier"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dateCreated"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dateLastModified"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastRunDate"];
  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"runEventsCount"];
  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shortcut"];
  v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"keyImageData"];

  v14 = 0;
  if (v7 && v6 && v23 && v8 && v9)
  {
    v24 = 0;
    v15 = [VCVoiceShortcut initWithIdentifier:"initWithIdentifier:phrase:shortcutName:shortcutDescription:associatedAppBundleIdentifier:dateCreated:dateLastModified:lastRunDate:runEventsCount:shortcut:keyImageData:error:" phrase:v7 shortcutName:v9 shortcutDescription:v10 associatedAppBundleIdentifier:v11 dateCreated:v12 dateLastModified:v13 lastRunDate:&v24 runEventsCount:? shortcut:? keyImageData:? error:?];
    v16 = v24;
    if (v16)
    {
      v20 = v7;
      v17 = getWFVoiceShortcutClientLogObject();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v26 = "[VCVoiceShortcut initWithCoder:]";
        v27 = 2112;
        v28 = v16;
        _os_log_impl(&dword_1B1DE3000, v17, OS_LOG_TYPE_ERROR, "%s Failed to construct a valid VoiceShortcut from coder: %@", buf, 0x16u);
      }

      v7 = v20;
    }

    self = v15;

    v14 = self;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v14;
}

- (NSString)description
{
  v16 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v15 = NSStringFromClass(v3);
  v14 = [(VCVoiceShortcut *)self identifier];
  v4 = [(VCVoiceShortcut *)self phrase];
  v5 = [(VCVoiceShortcut *)self shortcutName];
  v6 = [(VCVoiceShortcut *)self shortcutDescription];
  v7 = [(VCVoiceShortcut *)self associatedAppBundleIdentifier];
  v8 = [(VCVoiceShortcut *)self dateCreated];
  v9 = [(VCVoiceShortcut *)self dateLastModified];
  v10 = [(VCVoiceShortcut *)self lastRunDate];
  v11 = [(VCVoiceShortcut *)self runEventsCount];
  v12 = [v16 stringWithFormat:@"<%@ %p\nidentifier: %@\nphrase: %@\nshortcutName: %@\nshortcutDescription: %@\nassociatedAppBundleIdentifier: %@\ndateCreated: %@\ndateLastModified: %@\nlastRunDate: %@\nrunEventsCount: %@>", v15, self, v14, v4, v5, v6, v7, v8, v9, v10, v11];

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(VCVoiceShortcut *)self identifier];
      v7 = [(VCVoiceShortcut *)v5 identifier];
      if (![v6 isEqualToString:v7])
      {
        v14 = 0;
LABEL_44:

        goto LABEL_45;
      }

      v8 = [(VCVoiceShortcut *)self phrase];
      v9 = [(VCVoiceShortcut *)v5 phrase];
      if (![v8 isEqualToString:v9])
      {
        v14 = 0;
LABEL_43:

        goto LABEL_44;
      }

      v10 = [(VCVoiceShortcut *)self shortcutName];
      v11 = [(VCVoiceShortcut *)v5 shortcutName];
      if (![v10 isEqual:v11])
      {
        v14 = 0;
LABEL_42:

        goto LABEL_43;
      }

      v12 = [(VCVoiceShortcut *)self shortcutDescription];
      v47 = [(VCVoiceShortcut *)v5 shortcutDescription];
      v48 = v12;
      if (v12 == v47)
      {
        v46 = v10;
      }

      else
      {
        v13 = [(VCVoiceShortcut *)self shortcutDescription];
        v44 = [(VCVoiceShortcut *)v5 shortcutDescription];
        v45 = v13;
        if (![v13 isEqual:v44])
        {
          v14 = 0;
          goto LABEL_40;
        }

        v46 = v10;
      }

      v15 = [(VCVoiceShortcut *)self associatedAppBundleIdentifier];
      v16 = [(VCVoiceShortcut *)v5 associatedAppBundleIdentifier];
      if (![v15 isEqual:v16])
      {

        v14 = 0;
        goto LABEL_39;
      }

      v41 = v16;
      v42 = v11;
      v43 = v15;
      v17 = [(VCVoiceShortcut *)self dateCreated];
      [(VCVoiceShortcut *)v5 dateCreated];
      v19 = v18 = v17;
      if (![v17 isEqual:?])
      {
        v14 = 0;
        v11 = v42;
LABEL_38:

LABEL_39:
        v10 = v46;
        if (v48 == v47)
        {
LABEL_41:

          goto LABEL_42;
        }

LABEL_40:

        goto LABEL_41;
      }

      v20 = [(VCVoiceShortcut *)self dateLastModified];
      v39 = [(VCVoiceShortcut *)v5 dateLastModified];
      v40 = v20;
      if (![v20 isEqual:?])
      {
        v14 = 0;
        v11 = v42;
LABEL_37:

        goto LABEL_38;
      }

      v21 = [(VCVoiceShortcut *)self lastRunDate];
      v37 = [(VCVoiceShortcut *)v5 lastRunDate];
      v38 = v21;
      if (![v21 isEqual:?])
      {
        v14 = 0;
        v11 = v42;
LABEL_36:

        goto LABEL_37;
      }

      v22 = [(VCVoiceShortcut *)self runEventsCount];
      v35 = [(VCVoiceShortcut *)v5 runEventsCount];
      v36 = v22;
      if (![v22 isEqual:?])
      {
        v14 = 0;
        v11 = v42;
LABEL_35:

        goto LABEL_36;
      }

      v23 = [(VCVoiceShortcut *)self shortcut];
      v33 = [(VCVoiceShortcut *)v5 shortcut];
      v34 = v23;
      v24 = v23 == v33;
      v11 = v42;
      if (v24 || (-[VCVoiceShortcut shortcut](self, "shortcut"), v31 = objc_claimAutoreleasedReturnValue(), -[VCVoiceShortcut shortcut](v5, "shortcut"), v30 = objc_claimAutoreleasedReturnValue(), [v31 isEqual:?]))
      {
        v32 = [(VCVoiceShortcut *)self keyImage];
        v25 = [(VCVoiceShortcut *)v5 keyImage];
        if (v32 == v25)
        {

          v14 = 1;
        }

        else
        {
          v29 = v25;
          v28 = [(VCVoiceShortcut *)self keyImage];
          v27 = [(VCVoiceShortcut *)v5 keyImage];
          v14 = [v28 isEqual:v27];
        }

        if (v34 == v33)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v14 = 0;
      }

LABEL_34:
      goto LABEL_35;
    }

    v14 = 0;
  }

LABEL_45:

  return v14;
}

- (unint64_t)hash
{
  v3 = [(VCVoiceShortcut *)self identifier];
  v4 = [v3 hash];
  v5 = [(VCVoiceShortcut *)self shortcut];
  v6 = [v5 hash] ^ v4;
  v7 = [(VCVoiceShortcut *)self dateLastModified];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (BOOL)hasBeenModified
{
  v3 = [(VCVoiceShortcut *)self dateCreated];
  v4 = [(VCVoiceShortcut *)self dateLastModified];
  v5 = [v3 compare:v4] == -1;

  return v5;
}

- (VCVoiceShortcut)initWithIdentifier:(id)a3 phrase:(id)a4 shortcutName:(id)a5 shortcutDescription:(id)a6 associatedAppBundleIdentifier:(id)a7 dateCreated:(id)a8 dateLastModified:(id)a9 lastRunDate:(id)a10 runEventsCount:(id)a11 shortcut:(id)a12 keyImageData:(id)a13 error:(id *)a14
{
  v76 = *MEMORY[0x1E69E9840];
  v20 = a3;
  v21 = a4;
  v68 = a5;
  v66 = a6;
  v22 = a7;
  v23 = a8;
  v67 = a9;
  v24 = self;
  v64 = a10;
  v63 = a11;
  v25 = a12;
  v62 = a13;
  if (![v20 length])
  {
    [MEMORY[0x1E696AAA8] currentHandler];
    v54 = v53 = v23;
    [v54 handleFailureInMethod:a2 object:self file:@"VCVoiceShortcut.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"identifier.length"}];

    v23 = v53;
  }

  if (![v21 length])
  {
    [MEMORY[0x1E696AAA8] currentHandler];
    v56 = v55 = v23;
    [v56 handleFailureInMethod:a2 object:self file:@"VCVoiceShortcut.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"phrase.length"}];

    v23 = v55;
  }

  if (![v68 length])
  {
    [MEMORY[0x1E696AAA8] currentHandler];
    v58 = v57 = v23;
    [v58 handleFailureInMethod:a2 object:self file:@"VCVoiceShortcut.m" lineNumber:51 description:{@"Invalid parameter not satisfying: %@", @"shortcutName.length"}];

    v23 = v57;
  }

  v65 = v23;
  if (!v23)
  {
    v59 = [MEMORY[0x1E696AAA8] currentHandler];
    [v59 handleFailureInMethod:a2 object:self file:@"VCVoiceShortcut.m" lineNumber:52 description:{@"Invalid parameter not satisfying: %@", @"dateCreated"}];
  }

  if (!v67)
  {
    v60 = [MEMORY[0x1E696AAA8] currentHandler];
    [v60 handleFailureInMethod:a2 object:self file:@"VCVoiceShortcut.m" lineNumber:53 description:{@"Invalid parameter not satisfying: %@", @"dateLastModified"}];
  }

  v26 = v20;
  v27 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v26];
  if (v27)
  {
    v28 = 0;
  }

  else
  {
    v28 = [MEMORY[0x1E696ABC0] vc_voiceShortcutErrorWithCode:1001 reason:{@"(%@) is not a valid UUID string.", v26}];
    v29 = v28;
  }

  v30 = v28;
  if (!v27)
  {
    if (!a14)
    {
      goto LABEL_28;
    }

    v49 = v30;
    v48 = 0;
    *a14 = v30;
LABEL_29:
    v38 = v66;
    v45 = v62;
    goto LABEL_30;
  }

  if (![v22 length])
  {
    v31 = [v25 _associatedAppBundleIdentifier];

    v22 = v31;
  }

  if (![v22 length])
  {
    v50 = getWFVoiceShortcutClientLogObject();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v71 = "[VCVoiceShortcut initWithIdentifier:phrase:shortcutName:shortcutDescription:associatedAppBundleIdentifier:dateCreated:dateLastModified:lastRunDate:runEventsCount:shortcut:keyImageData:error:]";
      v72 = 2114;
      v73 = v25;
      v74 = 2114;
      v75 = @"an associatedAppBundleIdentifier is required on the shortcut";
      _os_log_impl(&dword_1B1DE3000, v50, OS_LOG_TYPE_ERROR, "%s Failed to init VCVoiceShortcut with shortcut=%{public}@ because %{public}@", buf, 0x20u);
    }

    if (!a14)
    {
      goto LABEL_28;
    }

    [MEMORY[0x1E696ABC0] vc_voiceShortcutErrorWithCode:1009 reason:{@"%@", @"an associatedAppBundleIdentifier is required on the shortcut"}];
    *a14 = v48 = 0;
    goto LABEL_29;
  }

  v69.receiver = self;
  v69.super_class = VCVoiceShortcut;
  v24 = [(VCVoiceShortcut *)&v69 init];
  if (!v24)
  {
LABEL_28:
    v48 = 0;
    goto LABEL_29;
  }

  v32 = [v26 copy];
  identifier = v24->_identifier;
  v24->_identifier = v32;

  v34 = [v21 copy];
  phrase = v24->_phrase;
  v24->_phrase = v34;

  v36 = [v68 copy];
  shortcutName = v24->_shortcutName;
  v24->_shortcutName = v36;

  v38 = v66;
  v39 = [v66 copy];
  shortcutDescription = v24->_shortcutDescription;
  v24->_shortcutDescription = v39;

  v41 = [v22 copy];
  associatedAppBundleIdentifier = v24->_associatedAppBundleIdentifier;
  v24->_associatedAppBundleIdentifier = v41;

  objc_storeStrong(&v24->_dateCreated, a8);
  objc_storeStrong(&v24->_dateLastModified, a9);
  objc_storeStrong(&v24->_lastRunDate, a10);
  objc_storeStrong(&v24->_runEventsCount, a11);
  v43 = [v25 copy];
  shortcut = v24->_shortcut;
  v24->_shortcut = v43;

  v45 = v62;
  v46 = [v62 length];
  if (v46)
  {
    v46 = [MEMORY[0x1E696E868] imageWithImageData:v62];
  }

  keyImage = v24->_keyImage;
  v24->_keyImage = v46;

  v24 = v24;
  v48 = v24;
LABEL_30:

  v51 = *MEMORY[0x1E69E9840];
  return v48;
}

@end