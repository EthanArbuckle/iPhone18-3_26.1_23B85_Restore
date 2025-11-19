@interface USOSerializedGraphNode
- (USOSerializedGraphNode)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation USOSerializedGraphNode

- (void)encodeWithCoder:(id)a3
{
  v11 = a3;
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[USOSerializedGraphNode usoElementId](self, "usoElementId")}];
  [v11 encodeObject:v4 forKey:@"usoElementId"];

  v5 = [(USOSerializedGraphNode *)self usoVerbId];
  [v11 encodeObject:v5 forKey:@"usoVerbId"];

  v6 = [(USOSerializedGraphNode *)self integerPayload];
  [v11 encodeObject:v6 forKey:@"integerPayload"];

  v7 = [(USOSerializedGraphNode *)self stringPayload];
  [v11 encodeObject:v7 forKey:@"stringPayload"];

  v8 = [(USOSerializedGraphNode *)self entityLabel];
  [v11 encodeObject:v8 forKey:@"entityLabel"];

  v9 = [(USOSerializedGraphNode *)self verbLabel];
  [v11 encodeObject:v9 forKey:@"verbLabel"];

  v10 = [(USOSerializedGraphNode *)self normalizedStringPayloads];
  [v11 encodeObject:v10 forKey:@"normalizedStringPayloads"];
}

- (USOSerializedGraphNode)initWithCoder:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = USOSerializedGraphNode;
  v5 = [(USOSerializedGraphNode *)&v29 init];
  if (v5)
  {
    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"usoElementId"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"usoVerbId"];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"integerPayload"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"stringPayload"];
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"entityLabel"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"verbLabel"];
    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v27 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v27 forKey:@"normalizedStringPayloads"];
    v5->_usoElementId = [v28 intValue];
    usoVerbId = v5->_usoVerbId;
    v5->_usoVerbId = v6;
    v15 = v6;

    integerPayload = v5->_integerPayload;
    v5->_integerPayload = v7;
    v17 = v7;

    stringPayload = v5->_stringPayload;
    v5->_stringPayload = v8;
    v19 = v8;

    entityLabel = v5->_entityLabel;
    v5->_entityLabel = v9;
    v21 = v9;

    verbLabel = v5->_verbLabel;
    v5->_verbLabel = v10;
    v23 = v10;

    normalizedStringPayloads = v5->_normalizedStringPayloads;
    v5->_normalizedStringPayloads = v13;

    v25 = v5;
  }

  return v5;
}

@end