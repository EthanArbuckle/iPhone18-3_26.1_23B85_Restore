@interface TSKWarning
+ (id)warningWithMessage:(id)a3 kind:(unsigned int)a4 severity:(int)a5 infos:(id)a6;
- (BOOL)isEqual:(id)a3;
- (TSKWarning)initWithMessage:(id)a3 kind:(unsigned int)a4 severity:(int)a5 infos:(id)a6;
- (void)dealloc;
@end

@implementation TSKWarning

+ (id)warningWithMessage:(id)a3 kind:(unsigned int)a4 severity:(int)a5 infos:(id)a6
{
  v6 = [[TSKWarning alloc] initWithMessage:a3 kind:*&a4 severity:*&a5 infos:a6];

  return v6;
}

- (TSKWarning)initWithMessage:(id)a3 kind:(unsigned int)a4 severity:(int)a5 infos:(id)a6
{
  v12.receiver = self;
  v12.super_class = TSKWarning;
  v10 = [(TSKWarning *)&v12 init];
  if (v10)
  {
    v10->mMessage = [a3 copy];
    v10->mInfos = [a6 copy];
    v10->mKind = a4;
    v10->mSeverity = a5;
  }

  return v10;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSKWarning;
  [(TSKWarning *)&v3 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  v4 = TSUDynamicCast();
  if (v4)
  {
    mMessage = self->mMessage;
    v6 = [v4 message];

    LOBYTE(v4) = [(NSString *)mMessage isEqualToString:v6];
  }

  return v4;
}

@end