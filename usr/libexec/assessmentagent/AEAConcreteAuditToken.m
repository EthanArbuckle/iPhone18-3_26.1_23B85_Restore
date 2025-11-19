@interface AEAConcreteAuditToken
+ (id)auditTokenWithData:(id)a3;
+ (id)invalidAuditToken;
- ($115C4C562B26FF47E01F9F4EA65B5887)underlyingToken;
- (AEAConcreteAuditToken)initWithAuditToken:(id *)a3;
- (BOOL)isEqual:(id)a3;
- (id)dataRepresentation;
@end

@implementation AEAConcreteAuditToken

- (AEAConcreteAuditToken)initWithAuditToken:(id *)a3
{
  v6.receiver = self;
  v6.super_class = AEAConcreteAuditToken;
  result = [(AEAConcreteAuditToken *)&v6 init];
  if (result)
  {
    v5 = *&a3->var0[4];
    *result->_underlyingToken.val = *a3->var0;
    *&result->_underlyingToken.val[4] = v5;
  }

  return result;
}

+ (id)auditTokenWithData:(id)a3
{
  v3 = [NSValue ae_valueFromData:a3 ofObjCType:"{?=[8I]}"];
  v4 = v3;
  if (v3)
  {
    *&v5 = -1;
    *(&v5 + 1) = -1;
    v10 = v5;
    v11 = v5;
    [v3 getValue:&v10];
    v6 = [AEAConcreteAuditToken alloc];
    v9[0] = v10;
    v9[1] = v11;
    v7 = [(AEAConcreteAuditToken *)v6 initWithAuditToken:v9];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)invalidAuditToken
{
  v2 = [AEAConcreteAuditToken alloc];
  *&v3 = -1;
  *(&v3 + 1) = -1;
  v6[0] = v3;
  v6[1] = v3;
  v4 = [(AEAConcreteAuditToken *)v2 initWithAuditToken:v6];

  return v4;
}

- (id)dataRepresentation
{
  [(AEAConcreteAuditToken *)self underlyingToken:0];
  v2 = [NSValue value:&v5 withObjCType:"{?=[8I]}"];
  v3 = [v2 ae_dataRepresentation];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if (v4 == self)
    {
      v6 = 1;
      goto LABEL_6;
    }

    if ([(AEAConcreteAuditToken *)v4 isMemberOfClass:objc_opt_class()])
    {
      v6 = sub_10007C288(self, v5);
      goto LABEL_6;
    }
  }

  v6 = 0;
LABEL_6:

  return v6;
}

- ($115C4C562B26FF47E01F9F4EA65B5887)underlyingToken
{
  v3 = *&self[1].var0[2];
  *retstr->var0 = *&self->var0[6];
  *&retstr->var0[4] = v3;
  return self;
}

@end