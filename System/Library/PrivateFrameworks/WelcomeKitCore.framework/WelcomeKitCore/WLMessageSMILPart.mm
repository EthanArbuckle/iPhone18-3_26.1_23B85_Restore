@interface WLMessageSMILPart
- (WLMessageSMILPart)initWithElementName:(id)a3 attributes:(id)a4;
- (id)fileName;
@end

@implementation WLMessageSMILPart

- (WLMessageSMILPart)initWithElementName:(id)a3 attributes:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = WLMessageSMILPart;
  v9 = [(WLMessageSMILPart *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_elementName, a3);
    objc_storeStrong(&v10->_attributes, a4);
  }

  return v10;
}

- (id)fileName
{
  v2 = [(NSDictionary *)self->_attributes objectForKeyedSubscript:@"src"];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 lastPathComponent];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end