@interface USOEntitySpan
- (USOEntitySpan)init;
- (USOEntitySpan)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation USOEntitySpan

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(USOEntitySpan *)self originAppId];
  [v4 encodeObject:v5 forKey:@"originAppId"];

  v6 = [(USOEntitySpan *)self sourceComponent];
  [v4 encodeObject:v6 forKey:@"sourceComponent"];

  v7 = [(USOEntitySpan *)self label];
  [v4 encodeObject:v7 forKey:@"label"];

  v8 = [(USOEntitySpan *)self matchInfo];
  [v4 encodeObject:v8 forKey:@"matchInfo"];

  v9 = [(USOEntitySpan *)self properties];
  [v4 encodeObject:v9 forKey:@"properties"];

  v10 = [(USOEntitySpan *)self startIndex];
  [v4 encodeObject:v10 forKey:@"startIndex"];

  v11 = [(USOEntitySpan *)self endIndex];
  [v4 encodeObject:v11 forKey:@"endIndex"];

  v12 = [(USOEntitySpan *)self alternatives];
  [v4 encodeObject:v12 forKey:@"alternatives"];

  v13 = [(USOEntitySpan *)self originEntityId];
  [v4 encodeObject:v13 forKey:@"originEntityId"];
}

- (USOEntitySpan)initWithCoder:(id)a3
{
  v4 = a3;
  v31.receiver = self;
  v31.super_class = USOEntitySpan;
  v5 = [(USOEntitySpan *)&v31 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"originAppId"];
    originAppId = v5->_originAppId;
    v5->_originAppId = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sourceComponent"];
    sourceComponent = v5->_sourceComponent;
    v5->_sourceComponent = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"label"];
    label = v5->_label;
    v5->_label = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"matchInfo"];
    matchInfo = v5->_matchInfo;
    v5->_matchInfo = v12;

    v14 = MEMORY[0x1E695DFD8];
    v15 = objc_opt_class();
    v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"properties"];
    properties = v5->_properties;
    v5->_properties = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startIndex"];
    startIndex = v5->_startIndex;
    v5->_startIndex = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endIndex"];
    endIndex = v5->_endIndex;
    v5->_endIndex = v21;

    v23 = MEMORY[0x1E695DFD8];
    v24 = objc_opt_class();
    v25 = [v23 setWithObjects:{v24, objc_opt_class(), 0}];
    v26 = [v4 decodeObjectOfClasses:v25 forKey:@"alternatives"];
    alternatives = v5->_alternatives;
    v5->_alternatives = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"originEntityId"];
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
    v3 = [MEMORY[0x1E695DF70] array];
    properties = v2->_properties;
    v2->_properties = v3;

    v5 = [MEMORY[0x1E695DF70] array];
    alternatives = v2->_alternatives;
    v2->_alternatives = v5;
  }

  return v2;
}

@end