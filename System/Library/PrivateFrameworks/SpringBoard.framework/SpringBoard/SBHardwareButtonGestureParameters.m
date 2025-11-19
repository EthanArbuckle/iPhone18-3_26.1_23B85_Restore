@interface SBHardwareButtonGestureParameters
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)succinctDescription;
@end

@implementation SBHardwareButtonGestureParameters

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[SBHardwareButtonGestureParameters allocWithZone:?]];
  [(SBHardwareButtonGestureParameters *)self multiplePressTimeInterval];
  v4->_multiplePressTimeInterval = v5;
  [(SBHardwareButtonGestureParameters *)self longPressTimeInterval];
  v4->_longPressTimeInterval = v6;
  v4->_maximumPressCount = [(SBHardwareButtonGestureParameters *)self maximumPressCount];
  return v4;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
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
  v2 = [(SBHardwareButtonGestureParameters *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBHardwareButtonGestureParameters *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(SBHardwareButtonGestureParameters *)self succinctDescriptionBuilder];
  v5 = [v4 appendInteger:-[SBHardwareButtonGestureParameters maximumPressCount](self withName:{"maximumPressCount"), @"maximumPressCount"}];
  [(SBHardwareButtonGestureParameters *)self longPressTimeInterval];
  v6 = [v4 appendTimeInterval:@"longPressTimeInterval" withName:0 decomposeUnits:?];
  [(SBHardwareButtonGestureParameters *)self multiplePressTimeInterval];
  v7 = [v4 appendTimeInterval:@"multiplePressTimeInterval" withName:0 decomposeUnits:?];

  return v4;
}

@end