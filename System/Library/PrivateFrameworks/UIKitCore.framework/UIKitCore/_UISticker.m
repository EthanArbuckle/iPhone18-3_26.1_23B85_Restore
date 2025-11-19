@interface _UISticker
- (BOOL)isAnimated;
- (_UISticker)init;
- (_UISticker)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
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

- (_UISticker)initWithCoder:(id)a3
{
  v4 = a3;
  v33.receiver = self;
  v33.super_class = _UISticker;
  v5 = [(_UISticker *)&v33 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"i"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"r"];
    representations = v5->_representations;
    v5->_representations = v8;

    v5->_effectType = [v4 decodeIntegerForKey:@"et"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"n"];
    name = v5->_name;
    v5->_name = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"eu"];
    externalURI = v5->_externalURI;
    v5->_externalURI = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"al"];
    accessibilityLabel = v5->_accessibilityLabel;
    v5->_accessibilityLabel = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"m"];
    metadata = v5->_metadata;
    v5->_metadata = v16;

    v18 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
    v19 = MEMORY[0x1E695DFD8];
    v20 = objc_opt_class();
    v21 = [v19 setWithObjects:{v20, objc_opt_class(), 0}];
    v22 = [v4 decodeDictionaryWithKeysOfClasses:v18 objectsOfClasses:v21 forKey:@"ai"];
    attributionInfo = v5->_attributionInfo;
    v5->_attributionInfo = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"b"];
    bakedInRep = v5->_bakedInRep;
    v5->_bakedInRep = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"st"];
    searchText = v5->_searchText;
    v5->_searchText = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sp"];
    sanitizedPrompt = v5->_sanitizedPrompt;
    v5->_sanitizedPrompt = v28;

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"an"];
    accessibilityName = v5->_accessibilityName;
    v5->_accessibilityName = v30;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(_UISticker *)self identifier];
  [v4 encodeObject:v5 forKey:@"i"];

  v6 = [(_UISticker *)self representations];
  [v4 encodeObject:v6 forKey:@"r"];

  [v4 encodeInteger:-[_UISticker effectType](self forKey:{"effectType"), @"et"}];
  v7 = [(_UISticker *)self name];
  [v4 encodeObject:v7 forKey:@"n"];

  v8 = [(_UISticker *)self externalURI];
  [v4 encodeObject:v8 forKey:@"eu"];

  v9 = [(_UISticker *)self accessibilityLabel];
  [v4 encodeObject:v9 forKey:@"al"];

  v10 = [(_UISticker *)self metadata];
  [v4 encodeObject:v10 forKey:@"m"];

  v11 = [(_UISticker *)self attributionInfo];
  [v4 encodeObject:v11 forKey:@"ai"];

  v12 = [(_UISticker *)self bakedInRep];
  [v4 encodeObject:v12 forKey:@"b"];

  v13 = [(_UISticker *)self searchText];
  [v4 encodeObject:v13 forKey:@"st"];

  v14 = [(_UISticker *)self sanitizedPrompt];
  [v4 encodeObject:v14 forKey:@"sp"];

  v15 = [(_UISticker *)self accessibilityName];
  [v4 encodeObject:v15 forKey:@"an"];
}

- (BOOL)isAnimated
{
  v3 = [(_UISticker *)self representations];
  v4 = [v3 count];

  if (!v4)
  {
    return 0;
  }

  v5 = [(_UISticker *)self representations];
  v6 = [v5 firstObject];
  v7 = [v6 role];
  v8 = [v7 isEqualToString:@"com.apple.stickers.role.animated"];

  return v8;
}

@end