@interface UIMotionEffectGroup
- (UIMotionEffectGroup)initWithCoder:(id)coder;
- (id)_keyPathsAndRelativeValuesForPose:(id)pose;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)description;
- (id)keyPathsAndRelativeValuesForViewerOffset:(UIOffset)offset;
@end

@implementation UIMotionEffectGroup

- (id)_keyPathsAndRelativeValuesForPose:(id)pose
{
  v31 = *MEMORY[0x1E69E9840];
  poseCopy = pose;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = self->_motionEffects;
  v20 = [(NSArray *)obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v20)
  {
    v18 = *v26;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v26 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v6 = [*(*(&v25 + 1) + 8 * i) _keyPathsAndRelativeValuesForPose:poseCopy];
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v7 = [v6 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v22;
          do
          {
            for (j = 0; j != v8; ++j)
            {
              if (*v22 != v9)
              {
                objc_enumerationMutation(v6);
              }

              v11 = *(*(&v21 + 1) + 8 * j);
              v12 = [v6 objectForKeyedSubscript:v11];
              v13 = [dictionary objectForKey:v11];
              v14 = v13;
              if (v13)
              {
                v15 = [v13 CA_addValue:v12 multipliedBy:1];

                v12 = v15;
              }

              if (v12)
              {
                [dictionary setObject:v12 forKey:v11];
              }
            }

            v8 = [v6 countByEnumeratingWithState:&v21 objects:v29 count:16];
          }

          while (v8);
        }
      }

      v20 = [(NSArray *)obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v20);
  }

  return dictionary;
}

- (id)keyPathsAndRelativeValuesForViewerOffset:(UIOffset)offset
{
  vertical = offset.vertical;
  horizontal = offset.horizontal;
  v6 = objc_alloc_init(_UIViewerRelativeDevicePose);
  [(_UIViewerRelativeDevicePose *)v6 setViewerOffset:horizontal, vertical];
  v7 = [(UIMotionEffectGroup *)self _keyPathsAndRelativeValuesForPose:v6];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(UIMotionEffectGroup);
  objc_storeStrong(&v4->_motionEffects, self->_motionEffects);
  return v4;
}

- (UIMotionEffectGroup)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = UIMotionEffectGroup;
  v5 = [(UIMotionEffect *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"_motionEffects"];
    motionEffects = v5->_motionEffects;
    v5->_motionEffects = v6;

    v8 = v5;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v3 stringWithFormat:@"<%@: %p motionEffects=<%@: %p>>", v5, self, v7, self->_motionEffects];

  return v8;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p motionEffects=%@>", v5, self, self->_motionEffects];

  return v6;
}

@end