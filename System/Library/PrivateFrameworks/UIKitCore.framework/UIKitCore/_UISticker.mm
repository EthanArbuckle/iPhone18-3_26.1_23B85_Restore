@interface _UISticker
- (BOOL)isAnimated;
- (_UISticker)init;
- (_UISticker)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UISticker

- (_UISticker)init
{
  v12.receiver = self;
  v12.super_class = _UISticker;
  v2 = [(_UISticker *)&v12 init];
  v3 = v2;
  if (v2)
  {
    identifier = v2->_identifier;
    v2->_identifier = 0;

    representations = v3->_representations;
    v3->_representations = 0;

    name = v3->_name;
    v3->_effectType = -1;
    v3->_name = 0;

    externalURI = v3->_externalURI;
    v3->_externalURI = 0;

    accessibilityLabel = v3->_accessibilityLabel;
    v3->_accessibilityLabel = 0;

    metadata = v3->_metadata;
    v3->_metadata = 0;

    attributionInfo = v3->_attributionInfo;
    v3->_attributionInfo = 0;
  }

  return v3;
}

- (_UISticker)initWithCoder:(id)coder
{
  coderCopy = coder;
  v33.receiver = self;
  v33.super_class = _UISticker;
  v5 = [(_UISticker *)&v33 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"i"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"r"];
    representations = v5->_representations;
    v5->_representations = v8;

    v5->_effectType = [coderCopy decodeIntegerForKey:@"et"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"n"];
    name = v5->_name;
    v5->_name = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"eu"];
    externalURI = v5->_externalURI;
    v5->_externalURI = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"al"];
    accessibilityLabel = v5->_accessibilityLabel;
    v5->_accessibilityLabel = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"m"];
    metadata = v5->_metadata;
    v5->_metadata = v16;

    v18 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
    v19 = MEMORY[0x1E695DFD8];
    v20 = objc_opt_class();
    v21 = [v19 setWithObjects:{v20, objc_opt_class(), 0}];
    v22 = [coderCopy decodeDictionaryWithKeysOfClasses:v18 objectsOfClasses:v21 forKey:@"ai"];
    attributionInfo = v5->_attributionInfo;
    v5->_attributionInfo = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"b"];
    bakedInRep = v5->_bakedInRep;
    v5->_bakedInRep = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"st"];
    searchText = v5->_searchText;
    v5->_searchText = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sp"];
    sanitizedPrompt = v5->_sanitizedPrompt;
    v5->_sanitizedPrompt = v28;

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"an"];
    accessibilityName = v5->_accessibilityName;
    v5->_accessibilityName = v30;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(_UISticker *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"i"];

  representations = [(_UISticker *)self representations];
  [coderCopy encodeObject:representations forKey:@"r"];

  [coderCopy encodeInteger:-[_UISticker effectType](self forKey:{"effectType"), @"et"}];
  name = [(_UISticker *)self name];
  [coderCopy encodeObject:name forKey:@"n"];

  externalURI = [(_UISticker *)self externalURI];
  [coderCopy encodeObject:externalURI forKey:@"eu"];

  accessibilityLabel = [(_UISticker *)self accessibilityLabel];
  [coderCopy encodeObject:accessibilityLabel forKey:@"al"];

  metadata = [(_UISticker *)self metadata];
  [coderCopy encodeObject:metadata forKey:@"m"];

  attributionInfo = [(_UISticker *)self attributionInfo];
  [coderCopy encodeObject:attributionInfo forKey:@"ai"];

  bakedInRep = [(_UISticker *)self bakedInRep];
  [coderCopy encodeObject:bakedInRep forKey:@"b"];

  searchText = [(_UISticker *)self searchText];
  [coderCopy encodeObject:searchText forKey:@"st"];

  sanitizedPrompt = [(_UISticker *)self sanitizedPrompt];
  [coderCopy encodeObject:sanitizedPrompt forKey:@"sp"];

  accessibilityName = [(_UISticker *)self accessibilityName];
  [coderCopy encodeObject:accessibilityName forKey:@"an"];
}

- (BOOL)isAnimated
{
  representations = [(_UISticker *)self representations];
  v4 = [representations count];

  if (!v4)
  {
    return 0;
  }

  representations2 = [(_UISticker *)self representations];
  firstObject = [representations2 firstObject];
  role = [firstObject role];
  v8 = [role isEqualToString:@"com.apple.stickers.role.animated"];

  return v8;
}

@end