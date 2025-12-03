@interface TSKWarning
+ (id)warningWithMessage:(id)message kind:(unsigned int)kind severity:(int)severity infos:(id)infos;
- (BOOL)isEqual:(id)equal;
- (TSKWarning)initWithMessage:(id)message kind:(unsigned int)kind severity:(int)severity infos:(id)infos;
- (void)dealloc;
@end

@implementation TSKWarning

+ (id)warningWithMessage:(id)message kind:(unsigned int)kind severity:(int)severity infos:(id)infos
{
  v6 = [[TSKWarning alloc] initWithMessage:message kind:*&kind severity:*&severity infos:infos];

  return v6;
}

- (TSKWarning)initWithMessage:(id)message kind:(unsigned int)kind severity:(int)severity infos:(id)infos
{
  v12.receiver = self;
  v12.super_class = TSKWarning;
  v10 = [(TSKWarning *)&v12 init];
  if (v10)
  {
    v10->mMessage = [message copy];
    v10->mInfos = [infos copy];
    v10->mKind = kind;
    v10->mSeverity = severity;
  }

  return v10;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSKWarning;
  [(TSKWarning *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  v4 = TSUDynamicCast();
  if (v4)
  {
    mMessage = self->mMessage;
    message = [v4 message];

    LOBYTE(v4) = [(NSString *)mMessage isEqualToString:message];
  }

  return v4;
}

@end