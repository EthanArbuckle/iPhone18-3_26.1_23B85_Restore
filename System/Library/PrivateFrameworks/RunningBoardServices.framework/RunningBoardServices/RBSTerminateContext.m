@interface RBSTerminateContext
+ (id)defaultContextWithExplanation:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (RBSTerminateContext)initWithExplanation:(id)a3;
- (RBSTerminateContext)initWithRBSXPCCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithRBSXPCCoder:(id)a3;
- (void)setExplanation:(id)a3;
@end

@implementation RBSTerminateContext

- (NSString)description
{
  v22 = [(NSArray *)self->_attributes count];
  v24 = objc_alloc(MEMORY[0x1E696AEC0]);
  v26 = [objc_opt_class() description];
  exceptionDomain = self->_exceptionDomain;
  v4 = @" domain:";
  if (!exceptionDomain)
  {
    v4 = &stru_1F01CD8F0;
  }

  v23 = v4;
  if (exceptionDomain)
  {
    v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:exceptionDomain];
  }

  else
  {
    v25 = &stru_1F01CD8F0;
  }

  exceptionCode = self->_exceptionCode;
  if (exceptionCode)
  {
    v6 = @" code:";
  }

  else
  {
    v6 = &stru_1F01CD8F0;
  }

  if (exceptionCode)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"0x%08X", self->_exceptionCode];
  }

  else
  {
    v7 = &stru_1F01CD8F0;
  }

  explanation = self->_explanation;
  reportType = self->_reportType;
  if (explanation)
  {
    v10 = @" explanation:";
  }

  else
  {
    v10 = &stru_1F01CD8F0;
  }

  if (explanation)
  {
    v11 = self->_explanation;
  }

  else
  {
    v11 = &stru_1F01CD8F0;
  }

  if (reportType > 2)
  {
    v12 = @"(undefined)";
  }

  else
  {
    v12 = off_1E7276770[reportType];
  }

  v13 = NSStringFromRBSTerminationResistance(self->_maximumTerminationResistance);
  v14 = v13;
  if (v22)
  {
    v15 = [(NSArray *)self->_attributes componentsJoinedByString:@", \n\t"];
    v20 = v11;
    v16 = v25;
    v17 = v26;
    v18 = [v24 initWithFormat:@"<%@|%@%@%@%@%@%@ reportType:%@ maxTerminationResistance:%@%@%@%@>", v26, v23, v25, v6, v7, v10, v20, v12, v14, @" attrs:[\n\t", v15, @"\n\t]"];
  }

  else
  {
    v21 = v11;
    v16 = v25;
    v17 = v26;
    v18 = [v24 initWithFormat:@"<%@|%@%@%@%@%@%@ reportType:%@ maxTerminationResistance:%@%@%@%@>", v26, v23, v25, v6, v7, v10, v21, v12, v13, &stru_1F01CD8F0, &stru_1F01CD8F0, &stru_1F01CD8F0];
  }

  if (exceptionCode)
  {
  }

  if (exceptionDomain)
  {
  }

  return v18;
}

+ (id)defaultContextWithExplanation:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithExplanation:v4];

  [v5 setReportType:0];
  [v5 setExceptionCode:3735905538];
  [v5 setPreventIfBeingDebugged:0];
  [v5 setMaximumTerminationResistance:40];

  return v5;
}

- (RBSTerminateContext)initWithExplanation:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = RBSTerminateContext;
  v5 = [(RBSTerminateContext *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_maximumTerminationResistance = 40;
    v7 = [v4 copy];
    explanation = v6->_explanation;
    v6->_explanation = v7;
  }

  return v6;
}

- (void)setExplanation:(id)a3
{
  v4 = [a3 copy];
  explanation = self->_explanation;
  self->_explanation = v4;

  MEMORY[0x1EEE66BB8]();
}

- (unint64_t)hash
{
  v2 = 0xBF58476D1CE4E5B9 * (self->_exceptionDomain ^ (self->_exceptionDomain >> 30));
  v3 = self->_exceptionCode ^ (self->_exceptionCode >> 30);
  v4 = (0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v3) ^ ((0xBF58476D1CE4E5B9 * v3) >> 27))) ^ (0x94D049BB133111EBLL * (v2 ^ (v2 >> 27)));
  return v4 ^ (v4 >> 31);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    goto LABEL_17;
  }

  v5 = objc_opt_class();
  if (v5 != objc_opt_class() || self->_reportType != v4->_reportType || self->_maximumTerminationResistance != v4->_maximumTerminationResistance || self->_exceptionDomain != v4->_exceptionDomain || self->_exceptionCode != v4->_exceptionCode || self->_preventIfBeingDebugged != v4->_preventIfBeingDebugged || (explanation = self->_explanation, explanation != v4->_explanation) && ![(NSString *)explanation isEqualToString:?]|| (attributes = self->_attributes, attributes != v4->_attributes) && ![(NSArray *)attributes isEqualToArray:?])
  {
    v10 = 0;
    goto LABEL_18;
  }

  additionalPayload = self->_additionalPayload;
  v9 = v4->_additionalPayload;
  if (additionalPayload == v9)
  {
LABEL_17:
    v10 = 1;
    goto LABEL_18;
  }

  v10 = 0;
  if (additionalPayload && v9)
  {
    v10 = [(NSDictionary *)additionalPayload isEqual:?];
  }

LABEL_18:

  return v10;
}

- (void)encodeWithRBSXPCCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt64:-[RBSTerminateContext exceptionDomain](self forKey:{"exceptionDomain"), @"_exceptionDomain"}];
  [v4 encodeInt64:-[RBSTerminateContext exceptionCode](self forKey:{"exceptionCode"), @"_exceptionCode"}];
  [v4 encodeInt64:-[RBSTerminateContext maximumTerminationResistance](self forKey:{"maximumTerminationResistance"), @"_maximumTerminationResistance"}];
  [v4 encodeBool:-[RBSTerminateContext preventIfBeingDebugged](self forKey:{"preventIfBeingDebugged"), @"_preventIfBeingDebugged"}];
  [v4 encodeInt64:-[RBSTerminateContext reportType](self forKey:{"reportType"), @"_reportType"}];
  v5 = [(RBSTerminateContext *)self attributes];
  [v4 encodeObject:v5 forKey:@"_attributes"];

  v6 = [(RBSTerminateContext *)self explanation];
  [v4 encodeObject:v6 forKey:@"_explanation"];

  v7 = RBSXPCPackObject(self->_additionalPayload);
  [v4 encodeXPCObject:v7 forKey:@"_additionalPayload"];
}

- (RBSTerminateContext)initWithRBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_explanation"];
  v6 = [(RBSTerminateContext *)self initWithExplanation:v5];

  if (v6)
  {
    -[RBSTerminateContext setExceptionDomain:](v6, "setExceptionDomain:", [v4 decodeInt64ForKey:@"_exceptionDomain"]);
    -[RBSTerminateContext setExceptionCode:](v6, "setExceptionCode:", [v4 decodeInt64ForKey:@"_exceptionCode"]);
    -[RBSTerminateContext setMaximumTerminationResistance:](v6, "setMaximumTerminationResistance:", [v4 decodeInt64ForKey:@"_maximumTerminationResistance"]);
    -[RBSTerminateContext setPreventIfBeingDebugged:](v6, "setPreventIfBeingDebugged:", [v4 decodeBoolForKey:@"_preventIfBeingDebugged"]);
    -[RBSTerminateContext setReportType:](v6, "setReportType:", [v4 decodeInt64ForKey:@"_reportType"]);
    v7 = objc_opt_class();
    v8 = [v4 decodeCollectionOfClass:v7 containingClass:objc_opt_class() forKey:@"_attributes"];
    [(RBSTerminateContext *)v6 setAttributes:v8];

    v9 = [v4 decodeXPCObjectOfType:MEMORY[0x1E69E9E80] forKey:@"_additionalPayload"];
    v10 = RBSXPCUnpackObject(v9);
    [(RBSTerminateContext *)v6 setAdditionalPayload:v10];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[RBSTerminateContext allocWithZone:?], "initWithExplanation:", self->_explanation];
  [(RBSTerminateContext *)v4 setExceptionCode:self->_exceptionCode];
  [(RBSTerminateContext *)v4 setExceptionDomain:self->_exceptionDomain];
  [(RBSTerminateContext *)v4 setMaximumTerminationResistance:self->_maximumTerminationResistance];
  [(RBSTerminateContext *)v4 setPreventIfBeingDebugged:self->_preventIfBeingDebugged];
  [(RBSTerminateContext *)v4 setReportType:self->_reportType];
  [(RBSTerminateContext *)v4 setAttributes:self->_attributes];
  [(RBSTerminateContext *)v4 setAdditionalPayload:self->_additionalPayload];
  return v4;
}

@end