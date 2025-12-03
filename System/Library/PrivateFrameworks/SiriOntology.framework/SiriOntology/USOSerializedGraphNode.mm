@interface USOSerializedGraphNode
- (USOSerializedGraphNode)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation USOSerializedGraphNode

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[USOSerializedGraphNode usoElementId](self, "usoElementId")}];
  [coderCopy encodeObject:v4 forKey:@"usoElementId"];

  usoVerbId = [(USOSerializedGraphNode *)self usoVerbId];
  [coderCopy encodeObject:usoVerbId forKey:@"usoVerbId"];

  integerPayload = [(USOSerializedGraphNode *)self integerPayload];
  [coderCopy encodeObject:integerPayload forKey:@"integerPayload"];

  stringPayload = [(USOSerializedGraphNode *)self stringPayload];
  [coderCopy encodeObject:stringPayload forKey:@"stringPayload"];

  entityLabel = [(USOSerializedGraphNode *)self entityLabel];
  [coderCopy encodeObject:entityLabel forKey:@"entityLabel"];

  verbLabel = [(USOSerializedGraphNode *)self verbLabel];
  [coderCopy encodeObject:verbLabel forKey:@"verbLabel"];

  normalizedStringPayloads = [(USOSerializedGraphNode *)self normalizedStringPayloads];
  [coderCopy encodeObject:normalizedStringPayloads forKey:@"normalizedStringPayloads"];
}

- (USOSerializedGraphNode)initWithCoder:(id)coder
{
  coderCopy = coder;
  v29.receiver = self;
  v29.super_class = USOSerializedGraphNode;
  v5 = [(USOSerializedGraphNode *)&v29 init];
  if (v5)
  {
    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"usoElementId"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"usoVerbId"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"integerPayload"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stringPayload"];
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"entityLabel"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"verbLabel"];
    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v27 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v27 forKey:@"normalizedStringPayloads"];
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