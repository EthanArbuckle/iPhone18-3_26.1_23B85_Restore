@interface TISticker
- (TISticker)initWithCoder:(id)coder;
- (TISticker)initWithIdentifier:(id)identifier representations:(id)representations effectType:(int64_t)type name:(id)name externalURI:(id)i accessibilityLabel:(id)label metadata:(id)metadata attributionInfo:(id)self0 searchText:(id)self1 accessibilityName:(id)self2;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TISticker

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_representations forKey:@"representations"];
  [coderCopy encodeObject:self->_name forKey:@"name"];
  [coderCopy encodeInteger:self->_effectType forKey:@"effectType"];
  [coderCopy encodeObject:self->_externalURI forKey:@"externalURI"];
  [coderCopy encodeObject:self->_accessibilityLabel forKey:@"accessibilityLabel"];
  [coderCopy encodeObject:self->_metadata forKey:@"metdata"];
  [coderCopy encodeObject:self->_attributionInfo forKey:@"attributionInfo"];
  [coderCopy encodeObject:self->_searchText forKey:@"searchText"];
  [coderCopy encodeObject:self->_accessibilityName forKey:@"accessibilityName"];
}

- (TISticker)initWithCoder:(id)coder
{
  coderCopy = coder;
  v36.receiver = self;
  v36.super_class = TISticker;
  v5 = [(TISticker *)&v36 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    v7 = [v6 copy];
    identifier = v5->_identifier;
    v5->_identifier = v7;

    v9 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"representations"];
    v10 = [v9 copy];
    representations = v5->_representations;
    v5->_representations = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    v13 = [v12 copy];
    name = v5->_name;
    v5->_name = v13;

    v5->_effectType = [coderCopy decodeIntegerForKey:@"effectType"];
    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"externalURI"];
    v16 = [v15 copy];
    externalURI = v5->_externalURI;
    v5->_externalURI = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accessibilityLabel"];
    v19 = [v18 copy];
    accessibilityLabel = v5->_accessibilityLabel;
    v5->_accessibilityLabel = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"metadata"];
    v22 = [v21 copy];
    metadata = v5->_metadata;
    v5->_metadata = v22;

    v24 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
    v25 = MEMORY[0x1E695DFD8];
    v26 = objc_opt_class();
    v27 = [v25 setWithObjects:{v26, objc_opt_class(), 0}];
    v28 = [coderCopy decodeDictionaryWithKeysOfClasses:v24 objectsOfClasses:v27 forKey:@"attributionInfo"];
    v29 = [v28 copy];
    attributionInfo = v5->_attributionInfo;
    v5->_attributionInfo = v29;

    v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accessibilityName"];
    accessibilityName = v5->_accessibilityName;
    v5->_accessibilityName = v31;

    v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"searchText"];
    searchText = v5->_searchText;
    v5->_searchText = v33;
  }

  return v5;
}

- (TISticker)initWithIdentifier:(id)identifier representations:(id)representations effectType:(int64_t)type name:(id)name externalURI:(id)i accessibilityLabel:(id)label metadata:(id)metadata attributionInfo:(id)self0 searchText:(id)self1 accessibilityName:(id)self2
{
  identifierCopy = identifier;
  representationsCopy = representations;
  nameCopy = name;
  iCopy = i;
  labelCopy = label;
  metadataCopy = metadata;
  infoCopy = info;
  textCopy = text;
  accessibilityNameCopy = accessibilityName;
  v31.receiver = self;
  v31.super_class = TISticker;
  v19 = [(TISticker *)&v31 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_identifier, identifier);
    objc_storeStrong(&v20->_representations, representations);
    v20->_effectType = type;
    objc_storeStrong(&v20->_name, name);
    objc_storeStrong(&v20->_externalURI, i);
    objc_storeStrong(&v20->_accessibilityLabel, label);
    objc_storeStrong(&v20->_metadata, metadata);
    objc_storeStrong(&v20->_attributionInfo, info);
    objc_storeStrong(&v20->_searchText, text);
    objc_storeStrong(&v20->_accessibilityName, accessibilityName);
  }

  return v20;
}

@end