@interface UIAccessibilityBridgeAXActionMessage
- (UIAccessibilityBridgeAXActionMessage)initWithAxAction:(int)action withValue:(id)value forElementRefData:(id)data;
- (UIAccessibilityBridgeAXActionMessage)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UIAccessibilityBridgeAXActionMessage

- (UIAccessibilityBridgeAXActionMessage)initWithAxAction:(int)action withValue:(id)value forElementRefData:(id)data
{
  v6 = *&action;
  valueCopy = value;
  dataCopy = data;
  v13.receiver = self;
  v13.super_class = UIAccessibilityBridgeAXActionMessage;
  v10 = [(UIAccessibilityBridgeAXActionMessage *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(UIAccessibilityBridgeAXActionMessage *)v10 setAxAction:v6];
    [(UIAccessibilityBridgeAXActionMessage *)v11 setValue:valueCopy];
    [(UIAccessibilityBridgeAXActionMessage *)v11 setElementRefData:dataCopy];
  }

  return v11;
}

- (UIAccessibilityBridgeAXActionMessage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = UIAccessibilityBridgeAXActionMessage;
  v5 = [(UIAccessibilityBridgeAXActionMessage *)&v10 init];
  if (v5)
  {
    -[UIAccessibilityBridgeAXActionMessage setAxAction:](v5, "setAxAction:", [coderCopy decodeIntForKey:@"axAction"]);
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"value"];
    [(UIAccessibilityBridgeAXActionMessage *)v5 setValue:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"elementRefData"];
    [(UIAccessibilityBridgeAXActionMessage *)v5 setElementRefData:v8];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt:-[UIAccessibilityBridgeAXActionMessage axAction](self forKey:{"axAction"), @"axAction"}];
  value = [(UIAccessibilityBridgeAXActionMessage *)self value];
  [coderCopy encodeObject:value forKey:@"value"];

  elementRefData = [(UIAccessibilityBridgeAXActionMessage *)self elementRefData];
  [coderCopy encodeObject:elementRefData forKey:@"elementRefData"];
}

@end