@interface _UITransientHapticFeedback
+ (id)transientHapticFeedbackWithIntensity:(float)intensity sharpness:(float)sharpness;
- (BOOL)isEqual:(id)equal;
- (_UITransientHapticFeedback)initWithDictionaryRepresentation:(id)representation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
@end

@implementation _UITransientHapticFeedback

+ (id)transientHapticFeedbackWithIntensity:(float)intensity sharpness:(float)sharpness
{
  v6 = objc_alloc_init(_UITransientHapticFeedback);
  v6->_intensity = intensity;
  v6->_sharpness = sharpness;

  return v6;
}

- (_UITransientHapticFeedback)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v12.receiver = self;
  v12.super_class = _UITransientHapticFeedback;
  v5 = [(_UIFeedback *)&v12 initWithDictionaryRepresentation:representationCopy];
  if (v5)
  {
    v6 = [representationCopy objectForKeyedSubscript:@"intensity"];
    [v6 floatValue];
    v5->_intensity = v7;

    v8 = [representationCopy objectForKeyedSubscript:@"sharpness"];
    [v8 floatValue];
    v5->_sharpness = v9;

    v10 = v5;
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v13[2] = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = _UITransientHapticFeedback;
  dictionaryRepresentation = [(_UIFeedback *)&v11 dictionaryRepresentation];
  v4 = [dictionaryRepresentation mutableCopy];

  v12[0] = @"intensity";
  *&v5 = self->_intensity;
  v6 = [MEMORY[0x1E696AD98] numberWithFloat:v5];
  v12[1] = @"sharpness";
  v13[0] = v6;
  *&v7 = self->_sharpness;
  v8 = [MEMORY[0x1E696AD98] numberWithFloat:v7];
  v13[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  [v4 addEntriesFromDictionary:v9];

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = _UITransientHapticFeedback;
  v4 = [(_UIFeedback *)&v8 copyWithZone:zone];
  [(_UITransientHapticFeedback *)self intensity];
  v4[33] = v5;
  [(_UITransientHapticFeedback *)self sharpness];
  v4[34] = v6;
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v13.receiver = self;
  v13.super_class = _UITransientHapticFeedback;
  if (-[_UIFeedback isEqual:](&v13, sel_isEqual_, equalCopy) && ([equalCopy intensity], v6 = v5, -[_UITransientHapticFeedback intensity](self, "intensity"), v6 == v7))
  {
    [equalCopy sharpness];
    v9 = v8;
    [(_UITransientHapticFeedback *)self sharpness];
    v11 = v9 == v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end