@interface SBHardwareButtonGestureParameters
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)succinctDescription;
@end

@implementation SBHardwareButtonGestureParameters

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[SBHardwareButtonGestureParameters allocWithZone:?]];
  [(SBHardwareButtonGestureParameters *)self multiplePressTimeInterval];
  v4->_multiplePressTimeInterval = v5;
  [(SBHardwareButtonGestureParameters *)self longPressTimeInterval];
  v4->_longPressTimeInterval = v6;
  v4->_maximumPressCount = [(SBHardwareButtonGestureParameters *)self maximumPressCount];
  return v4;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [[SBMutableHardwareButtonGestureParameters allocWithZone:?]];
  [(SBMutableHardwareButtonGestureParameters *)v4 setMaximumPressCount:[(SBHardwareButtonGestureParameters *)self maximumPressCount]];
  [(SBHardwareButtonGestureParameters *)self longPressTimeInterval];
  [(SBMutableHardwareButtonGestureParameters *)v4 setLongPressTimeInterval:?];
  [(SBHardwareButtonGestureParameters *)self multiplePressTimeInterval];
  [(SBMutableHardwareButtonGestureParameters *)v4 setMultiplePressTimeInterval:?];
  return v4;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBHardwareButtonGestureParameters *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBHardwareButtonGestureParameters *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(SBHardwareButtonGestureParameters *)self succinctDescriptionBuilder];
  v5 = [succinctDescriptionBuilder appendInteger:-[SBHardwareButtonGestureParameters maximumPressCount](self withName:{"maximumPressCount"), @"maximumPressCount"}];
  [(SBHardwareButtonGestureParameters *)self longPressTimeInterval];
  v6 = [succinctDescriptionBuilder appendTimeInterval:@"longPressTimeInterval" withName:0 decomposeUnits:?];
  [(SBHardwareButtonGestureParameters *)self multiplePressTimeInterval];
  v7 = [succinctDescriptionBuilder appendTimeInterval:@"multiplePressTimeInterval" withName:0 decomposeUnits:?];

  return succinctDescriptionBuilder;
}

@end