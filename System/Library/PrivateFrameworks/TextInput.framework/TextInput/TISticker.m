@interface TISticker
- (TISticker)initWithCoder:(id)a3;
- (TISticker)initWithIdentifier:(id)a3 representations:(id)a4 effectType:(int64_t)a5 name:(id)a6 externalURI:(id)a7 accessibilityLabel:(id)a8 metadata:(id)a9 attributionInfo:(id)a10 searchText:(id)a11 accessibilityName:(id)a12;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TISticker

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_representations forKey:@"representations"];
  [v5 encodeObject:self->_name forKey:@"name"];
  [v5 encodeInteger:self->_effectType forKey:@"effectType"];
  [v5 encodeObject:self->_externalURI forKey:@"externalURI"];
  [v5 encodeObject:self->_accessibilityLabel forKey:@"accessibilityLabel"];
  [v5 encodeObject:self->_metadata forKey:@"metdata"];
  [v5 encodeObject:self->_attributionInfo forKey:@"attributionInfo"];
  [v5 encodeObject:self->_searchText forKey:@"searchText"];
  [v5 encodeObject:self->_accessibilityName forKey:@"accessibilityName"];
}

- (TISticker)initWithCoder:(id)a3
{
  v4 = a3;
  v36.receiver = self;
  v36.super_class = TISticker;
  v5 = [(TISticker *)&v36 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    v7 = [v6 copy];
    identifier = v5->_identifier;
    v5->_identifier = v7;

    v9 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"representations"];
    v10 = [v9 copy];
    representations = v5->_representations;
    v5->_representations = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    v13 = [v12 copy];
    name = v5->_name;
    v5->_name = v13;

    v5->_effectType = [v4 decodeIntegerForKey:@"effectType"];
    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"externalURI"];
    v16 = [v15 copy];
    externalURI = v5->_externalURI;
    v5->_externalURI = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accessibilityLabel"];
    v19 = [v18 copy];
    accessibilityLabel = v5->_accessibilityLabel;
    v5->_accessibilityLabel = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"metadata"];
    v22 = [v21 copy];
    metadata = v5->_metadata;
    v5->_metadata = v22;

    v24 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
    v25 = MEMORY[0x1E695DFD8];
    v26 = objc_opt_class();
    v27 = [v25 setWithObjects:{v26, objc_opt_class(), 0}];
    v28 = [v4 decodeDictionaryWithKeysOfClasses:v24 objectsOfClasses:v27 forKey:@"attributionInfo"];
    v29 = [v28 copy];
    attributionInfo = v5->_attributionInfo;
    v5->_attributionInfo = v29;

    v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accessibilityName"];
    accessibilityName = v5->_accessibilityName;
    v5->_accessibilityName = v31;

    v33 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"searchText"];
    searchText = v5->_searchText;
    v5->_searchText = v33;
  }

  return v5;
}

- (TISticker)initWithIdentifier:(id)a3 representations:(id)a4 effectType:(int64_t)a5 name:(id)a6 externalURI:(id)a7 accessibilityLabel:(id)a8 metadata:(id)a9 attributionInfo:(id)a10 searchText:(id)a11 accessibilityName:(id)a12
{
  v30 = a3;
  v29 = a4;
  v28 = a6;
  v27 = a7;
  v26 = a8;
  v25 = a9;
  v24 = a10;
  v23 = a11;
  v18 = a12;
  v31.receiver = self;
  v31.super_class = TISticker;
  v19 = [(TISticker *)&v31 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_identifier, a3);
    objc_storeStrong(&v20->_representations, a4);
    v20->_effectType = a5;
    objc_storeStrong(&v20->_name, a6);
    objc_storeStrong(&v20->_externalURI, a7);
    objc_storeStrong(&v20->_accessibilityLabel, a8);
    objc_storeStrong(&v20->_metadata, a9);
    objc_storeStrong(&v20->_attributionInfo, a10);
    objc_storeStrong(&v20->_searchText, a11);
    objc_storeStrong(&v20->_accessibilityName, a12);
  }

  return v20;
}

@end