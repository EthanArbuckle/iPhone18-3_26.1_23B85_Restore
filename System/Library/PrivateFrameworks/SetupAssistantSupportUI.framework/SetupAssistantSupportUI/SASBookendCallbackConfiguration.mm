@interface SASBookendCallbackConfiguration
- (SASBookendCallbackConfiguration)initWithAnimationWillBeginBlock:(id)block animationDidFinishBlock:(id)finishBlock;
- (id)initOnAnimationWillBegin:(id)begin onAnimationDidFinish:(id)finish;
- (id)onAnimationDidFinish;
- (id)onAnimationDidFinishLegacy;
- (id)onAnimationError;
- (id)onAnimationUIUpdateSignal;
- (id)onAnimationWillBegin;
- (id)onAnimationWillBeginLegacy;
- (void)setOnAnimationDidFinish:(id)finish;
- (void)setOnAnimationError:(id)error;
- (void)setOnAnimationUIUpdateSignal:(id)signal;
- (void)setOnAnimationWillBegin:(id)begin;
@end

@implementation SASBookendCallbackConfiguration

- (id)onAnimationWillBegin
{
  v2 = (self + OBJC_IVAR___SASBookendCallbackConfiguration_onAnimationWillBegin);
  swift_beginAccess();
  if (*v2)
  {
    v3 = v2[1];
    aBlock[4] = *v2;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_265AA63F8;
    aBlock[3] = &block_descriptor_63;
    v4 = _Block_copy(aBlock);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setOnAnimationWillBegin:(id)begin
{
  v4 = _Block_copy(begin);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_265AA63F4;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR___SASBookendCallbackConfiguration_onAnimationWillBegin);
  swift_beginAccess();
  v7 = *v6;
  *v6 = v4;
  v6[1] = v5;
  selfCopy = self;
  sub_265A56D6C(v7);
}

- (id)onAnimationDidFinish
{
  v2 = (self + OBJC_IVAR___SASBookendCallbackConfiguration_onAnimationDidFinish);
  swift_beginAccess();
  if (*v2)
  {
    v3 = v2[1];
    aBlock[4] = *v2;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_265AA63F8;
    aBlock[3] = &block_descriptor_56;
    v4 = _Block_copy(aBlock);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setOnAnimationDidFinish:(id)finish
{
  v4 = _Block_copy(finish);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_265AA63F4;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR___SASBookendCallbackConfiguration_onAnimationDidFinish);
  swift_beginAccess();
  v7 = *v6;
  *v6 = v4;
  v6[1] = v5;
  selfCopy = self;
  sub_265A56D6C(v7);
}

- (id)onAnimationUIUpdateSignal
{
  v2 = (self + OBJC_IVAR___SASBookendCallbackConfiguration_onAnimationUIUpdateSignal);
  swift_beginAccess();
  if (*v2)
  {
    v3 = v2[1];
    aBlock[4] = *v2;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_265AA63F8;
    aBlock[3] = &block_descriptor_49;
    v4 = _Block_copy(aBlock);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setOnAnimationUIUpdateSignal:(id)signal
{
  v4 = _Block_copy(signal);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_265AA63F4;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR___SASBookendCallbackConfiguration_onAnimationUIUpdateSignal);
  swift_beginAccess();
  v7 = *v6;
  *v6 = v4;
  v6[1] = v5;
  selfCopy = self;
  sub_265A56D6C(v7);
}

- (id)onAnimationError
{
  v2 = (self + OBJC_IVAR___SASBookendCallbackConfiguration_onAnimationError);
  swift_beginAccess();
  if (*v2)
  {
    v3 = v2[1];
    aBlock[4] = *v2;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_265AA5304;
    aBlock[3] = &block_descriptor_43_0;
    v4 = _Block_copy(aBlock);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setOnAnimationError:(id)error
{
  v4 = _Block_copy(error);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_265AA6324;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR___SASBookendCallbackConfiguration_onAnimationError);
  swift_beginAccess();
  v7 = *v6;
  *v6 = v4;
  v6[1] = v5;
  selfCopy = self;
  sub_265A56D6C(v7);
}

- (id)onAnimationWillBeginLegacy
{
  if (*(self + OBJC_IVAR___SASBookendCallbackConfiguration_onAnimationWillBeginLegacy))
  {
    v2 = *(self + OBJC_IVAR___SASBookendCallbackConfiguration_onAnimationWillBeginLegacy + 8);
    v5[4] = *(self + OBJC_IVAR___SASBookendCallbackConfiguration_onAnimationWillBeginLegacy);
    v5[5] = v2;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 1107296256;
    v5[2] = sub_265AA5584;
    v5[3] = &block_descriptor_37;
    v3 = _Block_copy(v5);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)onAnimationDidFinishLegacy
{
  if (*(self + OBJC_IVAR___SASBookendCallbackConfiguration_onAnimationDidFinishLegacy))
  {
    v2 = *(self + OBJC_IVAR___SASBookendCallbackConfiguration_onAnimationDidFinishLegacy + 8);
    v5[4] = *(self + OBJC_IVAR___SASBookendCallbackConfiguration_onAnimationDidFinishLegacy);
    v5[5] = v2;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 1107296256;
    v5[2] = sub_265AA56B8;
    v5[3] = &block_descriptor_34;
    v3 = _Block_copy(v5);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)initOnAnimationWillBegin:(id)begin onAnimationDidFinish:(id)finish
{
  v5 = _Block_copy(begin);
  v6 = _Block_copy(finish);
  v7 = v6;
  if (!v5)
  {
    v8 = 0;
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    v9 = 0;
    return sub_265AA599C(v5, v8, v10, v9);
  }

  v8 = swift_allocObject();
  *(v8 + 16) = v5;
  v5 = sub_265AA6310;
  if (!v7)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v10 = sub_265AA63F4;
  return sub_265AA599C(v5, v8, v10, v9);
}

- (SASBookendCallbackConfiguration)initWithAnimationWillBeginBlock:(id)block animationDidFinishBlock:(id)finishBlock
{
  v6 = _Block_copy(block);
  v7 = _Block_copy(finishBlock);
  v8 = v7;
  if (!v6)
  {
    v9 = 0;
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    v10 = 0;
    goto LABEL_6;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  v6 = sub_265AA62B8;
  if (!v8)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  v11 = sub_265AA62B0;
LABEL_6:
  v12 = (self + OBJC_IVAR___SASBookendCallbackConfiguration_onAnimationWillBegin);
  *v12 = 0;
  v12[1] = 0;
  v13 = (self + OBJC_IVAR___SASBookendCallbackConfiguration_onAnimationDidFinish);
  *v13 = 0;
  v13[1] = 0;
  v14 = (self + OBJC_IVAR___SASBookendCallbackConfiguration_onAnimationUIUpdateSignal);
  *v14 = 0;
  v14[1] = 0;
  v15 = (self + OBJC_IVAR___SASBookendCallbackConfiguration_onAnimationError);
  *v15 = 0;
  v15[1] = 0;
  v16 = (self + OBJC_IVAR___SASBookendCallbackConfiguration_onAnimationWillBeginLegacy);
  *v16 = v6;
  v16[1] = v9;
  v17 = (self + OBJC_IVAR___SASBookendCallbackConfiguration_onAnimationDidFinishLegacy);
  *v17 = v11;
  v17[1] = v10;
  v19.receiver = self;
  v19.super_class = SASBookendCallbackConfiguration;
  return [(SASBookendCallbackConfiguration *)&v19 init];
}

@end