@interface ISAuthenticationChallengeOperation
+ (id)operationWithChallenge:(id)a3;
- (id)_copyCredentialForSignInResponseDictionary:(id)a3;
- (void)dealloc;
- (void)handleButtonSelected:(int64_t)a3 withResponseDictionary:(id)a4;
- (void)run;
@end

@implementation ISAuthenticationChallengeOperation

- (void)dealloc
{
  [(ISAuthenticationChallengeOperation *)self setChallenge:0];
  [(ISAuthenticationChallengeOperation *)self setCredential:0];
  v3.receiver = self;
  v3.super_class = ISAuthenticationChallengeOperation;
  [(ISDialogOperation *)&v3 dealloc];
}

+ (id)operationWithChallenge:(id)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setChallenge:a3];

  return v4;
}

- (void)handleButtonSelected:(int64_t)a3 withResponseDictionary:(id)a4
{
  if (a3 == 1)
  {
    v7 = [(ISAuthenticationChallengeOperation *)self _copyCredentialForSignInResponseDictionary:a4];
  }

  else
  {
    v7 = 0;
  }

  [(ISAuthenticationChallengeOperation *)self setCredential:v7];

  v8.receiver = self;
  v8.super_class = ISAuthenticationChallengeOperation;
  [(ISDialogOperation *)&v8 handleButtonSelected:a3 withResponseDictionary:a4];
}

- (void)run
{
  v3 = [[ISDialog alloc] initWithAuthenticationChallege:[(ISAuthenticationChallengeOperation *)self challenge]];
  [(ISDialog *)v3 setAllowDuplicates:1];
  [(ISDialogOperation *)self setDialog:v3];

  v4.receiver = self;
  v4.super_class = ISAuthenticationChallengeOperation;
  [(ISDialogOperation *)&v4 run];
}

- (id)_copyCredentialForSignInResponseDictionary:(id)a3
{
  Value = CFDictionaryGetValue(a3, *MEMORY[0x277CBF238]);
  v5 = Value;
  if (!Value)
  {
    goto LABEL_8;
  }

  v6 = CFGetTypeID(Value);
  if (v6 != CFStringGetTypeID())
  {
    v8 = CFGetTypeID(v5);
    if (v8 == CFArrayGetTypeID() && CFArrayGetCount(v5) == 2)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v5, 0);
      v5 = CFArrayGetValueAtIndex(v5, 1);
      goto LABEL_9;
    }

    v5 = 0;
LABEL_8:
    ValueAtIndex = 0;
    goto LABEL_9;
  }

  ValueAtIndex = [[(ISAuthenticationChallengeOperation *)self challenge] user];
LABEL_9:
  if (!-[NSString length](ValueAtIndex, "length") || ![v5 length])
  {
    return 0;
  }

  v9 = objc_alloc(MEMORY[0x277CCACF0]);

  return [v9 initWithUser:ValueAtIndex password:v5 persistence:1];
}

@end