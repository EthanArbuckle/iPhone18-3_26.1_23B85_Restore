@interface UIAccessibilityBridgeAXActionMessage
- (UIAccessibilityBridgeAXActionMessage)initWithAxAction:(int)a3 withValue:(id)a4 forElementRefData:(id)a5;
- (UIAccessibilityBridgeAXActionMessage)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UIAccessibilityBridgeAXActionMessage

- (UIAccessibilityBridgeAXActionMessage)initWithAxAction:(int)a3 withValue:(id)a4 forElementRefData:(id)a5
{
  v6 = *&a3;
  v8 = a4;
  v9 = a5;
  v13.receiver = self;
  v13.super_class = UIAccessibilityBridgeAXActionMessage;
  v10 = [(UIAccessibilityBridgeAXActionMessage *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(UIAccessibilityBridgeAXActionMessage *)v10 setAxAction:v6];
    [(UIAccessibilityBridgeAXActionMessage *)v11 setValue:v8];
    [(UIAccessibilityBridgeAXActionMessage *)v11 setElementRefData:v9];
  }

  return v11;
}

- (UIAccessibilityBridgeAXActionMessage)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = UIAccessibilityBridgeAXActionMessage;
  v5 = [(UIAccessibilityBridgeAXActionMessage *)&v10 init];
  if (v5)
  {
    -[UIAccessibilityBridgeAXActionMessage setAxAction:](v5, "setAxAction:", [v4 decodeIntForKey:@"axAction"]);
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"value"];
    [(UIAccessibilityBridgeAXActionMessage *)v5 setValue:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"elementRefData"];
    [(UIAccessibilityBridgeAXActionMessage *)v5 setElementRefData:v8];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt:-[UIAccessibilityBridgeAXActionMessage axAction](self forKey:{"axAction"), @"axAction"}];
  v5 = [(UIAccessibilityBridgeAXActionMessage *)self value];
  [v4 encodeObject:v5 forKey:@"value"];

  v6 = [(UIAccessibilityBridgeAXActionMessage *)self elementRefData];
  [v4 encodeObject:v6 forKey:@"elementRefData"];
}

@end