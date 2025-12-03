@interface USOEntitySpan
- (USOEntitySpan)init;
- (USOEntitySpan)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation USOEntitySpan

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  originAppId = [(USOEntitySpan *)self originAppId];
  [coderCopy encodeObject:originAppId forKey:@"originAppId"];

  sourceComponent = [(USOEntitySpan *)self sourceComponent];
  [coderCopy encodeObject:sourceComponent forKey:@"sourceComponent"];

  label = [(USOEntitySpan *)self label];
  [coderCopy encodeObject:label forKey:@"label"];

  matchInfo = [(USOEntitySpan *)self matchInfo];
  [coderCopy encodeObject:matchInfo forKey:@"matchInfo"];

  properties = [(USOEntitySpan *)self properties];
  [coderCopy encodeObject:properties forKey:@"properties"];

  startIndex = [(USOEntitySpan *)self startIndex];
  [coderCopy encodeObject:startIndex forKey:@"startIndex"];

  endIndex = [(USOEntitySpan *)self endIndex];
  [coderCopy encodeObject:endIndex forKey:@"endIndex"];

  alternatives = [(USOEntitySpan *)self alternatives];
  [coderCopy encodeObject:alternatives forKey:@"alternatives"];

  originEntityId = [(USOEntitySpan *)self originEntityId];
  [coderCopy encodeObject:originEntityId forKey:@"originEntityId"];
}

- (USOEntitySpan)initWithCoder:(id)coder
{
  coderCopy = coder;
  v31.receiver = self;
  v31.super_class = USOEntitySpan;
  v5 = [(USOEntitySpan *)&v31 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"originAppId"];
    originAppId = v5->_originAppId;
    v5->_originAppId = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sourceComponent"];
    sourceComponent = v5->_sourceComponent;
    v5->_sourceComponent = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"label"];
    label = v5->_label;
    v5->_label = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"matchInfo"];
    matchInfo = v5->_matchInfo;
    v5->_matchInfo = v12;

    v14 = MEMORY[0x1E695DFD8];
    v15 = objc_opt_class();
    v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"properties"];
    properties = v5->_properties;
    v5->_properties = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startIndex"];
    startIndex = v5->_startIndex;
    v5->_startIndex = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endIndex"];
    endIndex = v5->_endIndex;
    v5->_endIndex = v21;

    v23 = MEMORY[0x1E695DFD8];
    v24 = objc_opt_class();
    v25 = [v23 setWithObjects:{v24, objc_opt_class(), 0}];
    v26 = [coderCopy decodeObjectOfClasses:v25 forKey:@"alternatives"];
    alternatives = v5->_alternatives;
    v5->_alternatives = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"originEntityId"];
    originEntityId = v5->_originEntityId;
    v5->_originEntityId = v28;
  }

  return v5;
}

- (USOEntitySpan)init
{
  v8.receiver = self;
  v8.super_class = USOEntitySpan;
  v2 = [(USOEntitySpan *)&v8 init];
  if (v2)
  {
    array = [MEMORY[0x1E695DF70] array];
    properties = v2->_properties;
    v2->_properties = array;

    array2 = [MEMORY[0x1E695DF70] array];
    alternatives = v2->_alternatives;
    v2->_alternatives = array2;
  }

  return v2;
}

@end