@interface SBAuthenticationFeedback
- (BOOL)hintFailureText;
- (BOOL)isEqual:(id)a3;
- (id)description;
- (id)initForFailureShowingPasscode:(BOOL)a3;
- (id)initForFailureWithFailureSettings:(id)a3;
- (id)initForSuccess;
- (unint64_t)hash;
@end

@implementation SBAuthenticationFeedback

- (id)initForSuccess
{
  v3.receiver = self;
  v3.super_class = SBAuthenticationFeedback;
  result = [(SBAuthenticationFeedback *)&v3 init];
  if (result)
  {
    *(result + 3) = 0;
    *(result + 8) = 1;
    *(result + 18) = 0;
  }

  return result;
}

- (id)initForFailureShowingPasscode:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = SBAuthenticationFeedback;
  result = [(SBAuthenticationFeedback *)&v5 init];
  if (result)
  {
    *(result + 3) = 1;
    *(result + 16) = 1;
    *(result + 17) = a3;
    *(result + 18) = 1;
  }

  return result;
}

- (id)initForFailureWithFailureSettings:(id)a3
{
  v4 = a3;
  v5 = -[SBAuthenticationFeedback initForFailureShowingPasscode:](self, "initForFailureShowingPasscode:", [v4 showPasscode]);
  if (v5)
  {
    v5[16] = [v4 vibrate];
    v5[18] = [v4 jiggleLock];
  }

  return v5;
}

- (BOOL)hintFailureText
{
  if (self->_result == 1)
  {
    return ![(SBAuthenticationFeedback *)self showPasscode:v2];
  }

  else
  {
    return 0;
  }
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = v3;
  if (self->_result)
  {
    v5 = @"Failure";
  }

  else
  {
    v5 = @"Success";
  }

  [v3 appendString:v5 withName:@"result"];
  v6 = [v4 appendBool:self->_showPasscode withName:@"showPasscode"];
  v7 = [v4 appendBool:-[SBAuthenticationFeedback hintFailureText](self withName:{"hintFailureText"), @"hintFailureText"}];
  v8 = [v4 appendBool:self->_vibrate withName:@"vibrates"];
  v9 = [v4 appendBool:self->_jiggleLock withName:@"jiggleLock"];
  v10 = [v4 build];

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  v6 = self->_result;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __36__SBAuthenticationFeedback_isEqual___block_invoke;
  v28[3] = &unk_2783ACDE0;
  v7 = v4;
  v29 = v7;
  v8 = [v5 appendInteger:v6 counterpart:v28];
  jiggleLock = self->_jiggleLock;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __36__SBAuthenticationFeedback_isEqual___block_invoke_2;
  v26[3] = &unk_2783ACE58;
  v10 = v7;
  v27 = v10;
  v11 = [v5 appendBool:jiggleLock counterpart:v26];
  vibrate = self->_vibrate;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __36__SBAuthenticationFeedback_isEqual___block_invoke_3;
  v24[3] = &unk_2783ACE58;
  v13 = v10;
  v25 = v13;
  v14 = [v5 appendBool:vibrate counterpart:v24];
  showPasscode = self->_showPasscode;
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __36__SBAuthenticationFeedback_isEqual___block_invoke_4;
  v22 = &unk_2783ACE58;
  v23 = v13;
  v16 = v13;
  v17 = [v5 appendBool:showPasscode counterpart:&v19];
  LOBYTE(showPasscode) = [v5 isEqual];

  return showPasscode;
}

- (unint64_t)hash
{
  v3 = [(SBAuthenticationFeedback *)self showPasscode];
  if ([(SBAuthenticationFeedback *)self jiggleLock])
  {
    v3 |= 4uLL;
  }

  v4 = [(SBAuthenticationFeedback *)self vibrate];
  v5 = v3 | 8;
  if (!v4)
  {
    v5 = v3;
  }

  v6 = self->_result;
  v7 = v5 | 0x20;
  if (v6 == 1)
  {
    v5 |= 0x10uLL;
  }

  if (v6)
  {
    return v5;
  }

  else
  {
    return v7;
  }
}

@end