@interface TUSIMFocusState
- (TUSIMFocusState)init;
- (TUSIMFocusState)initWithCoder:(id)coder;
- (TUSIMFocusState)initWithIdentifier:(id)identifier name:(id)name phNumber:(id)number focusAllowCalls:(BOOL)calls;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TUSIMFocusState

- (TUSIMFocusState)initWithIdentifier:(id)identifier name:(id)name phNumber:(id)number focusAllowCalls:(BOOL)calls
{
  v8 = sub_19586ED50();
  v10 = v9;
  v11 = sub_19586ED50();
  v13 = v12;
  v14 = sub_19586ED50();
  v15 = (self + OBJC_IVAR___TUSIMFocusState_identifier);
  *v15 = v8;
  v15[1] = v10;
  v16 = (self + OBJC_IVAR___TUSIMFocusState_name);
  *v16 = v11;
  v16[1] = v13;
  v17 = (self + OBJC_IVAR___TUSIMFocusState_phNumber);
  *v17 = v14;
  v17[1] = v18;
  *(self + OBJC_IVAR___TUSIMFocusState_focusAllowCalls) = calls;
  v20.receiver = self;
  v20.super_class = TUSIMFocusState;
  return [(TUSIMFocusState *)&v20 init];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  TUSIMFocusState.encode(with:)(coderCopy);
}

- (TUSIMFocusState)initWithCoder:(id)coder
{
  coderCopy = coder;
  sub_195854634(coderCopy);
  v5 = v4;

  return v5;
}

- (TUSIMFocusState)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end