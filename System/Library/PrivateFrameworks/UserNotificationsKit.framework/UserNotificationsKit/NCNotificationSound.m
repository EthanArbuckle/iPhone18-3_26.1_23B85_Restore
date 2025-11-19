@interface NCNotificationSound
- (BOOL)isEqual:(id)a3;
- (NCNotificationSound)initWithNotificationSound:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (unint64_t)hash;
@end

@implementation NCNotificationSound

- (unint64_t)hash
{
  v3 = [(NSString *)self->_ringtoneName hash];
  v4 = [(NSDictionary *)self->_vibrationPattern hash]+ v3;
  v5 = [(NSDictionary *)self->_controllerAttributes hash];
  v6 = v4 + v5 + [(TLAlertConfiguration *)self->_alertConfiguration hash];
  return v6 + [(NSString *)self->_songPath hash];
}

- (NCNotificationSound)initWithNotificationSound:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = NCNotificationSound;
  v5 = [(NCNotificationSound *)&v23 init];
  if (v5)
  {
    v5->_soundType = [v4 soundType];
    v5->_systemSoundID = [v4 systemSoundID];
    v5->_soundBehavior = [v4 soundBehavior];
    v6 = [v4 ringtoneName];
    v7 = [v6 copy];
    ringtoneName = v5->_ringtoneName;
    v5->_ringtoneName = v7;

    v9 = [v4 vibrationPattern];
    v10 = [v9 copy];
    vibrationPattern = v5->_vibrationPattern;
    v5->_vibrationPattern = v10;

    v5->_repeats = [v4 isRepeating];
    [v4 maxDuration];
    v5->_maxDuration = v12;
    v13 = [v4 controllerAttributes];
    v14 = [v13 copy];
    controllerAttributes = v5->_controllerAttributes;
    v5->_controllerAttributes = v14;

    v16 = [v4 songPath];
    v17 = [v16 copy];
    songPath = v5->_songPath;
    v5->_songPath = v17;

    v19 = [v4 alertConfiguration];
    v20 = [v19 copy];
    alertConfiguration = v5->_alertConfiguration;
    v5->_alertConfiguration = v20;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = 0;
LABEL_15:
      v27 = 0;
      goto LABEL_16;
    }
  }

  v5 = v4;
  if (!v5)
  {
    goto LABEL_15;
  }

  v6 = [(NCNotificationSound *)self soundType];
  if (v6 != [v5 soundType])
  {
    goto LABEL_15;
  }

  v7 = [(NCNotificationSound *)self systemSoundID];
  if (v7 != [v5 systemSoundID])
  {
    goto LABEL_15;
  }

  v8 = [(NCNotificationSound *)self soundBehavior];
  if (v8 != [v5 soundBehavior])
  {
    goto LABEL_15;
  }

  v9 = [(NCNotificationSound *)self ringtoneName];
  v10 = [v5 ringtoneName];
  v11 = NCIsEqual(v9, v10);

  if (!v11)
  {
    goto LABEL_15;
  }

  v12 = [(NCNotificationSound *)self vibrationPattern];
  v13 = [v5 vibrationPattern];
  v14 = NCIsEqual(v12, v13);

  if (!v14)
  {
    goto LABEL_15;
  }

  v15 = [(NCNotificationSound *)self isRepeating];
  if (v15 != [v5 isRepeating])
  {
    goto LABEL_15;
  }

  [(NCNotificationSound *)self maxDuration];
  v17 = v16;
  [v5 maxDuration];
  if (v17 != v18)
  {
    goto LABEL_15;
  }

  v19 = [(NCNotificationSound *)self controllerAttributes];
  v20 = [v5 controllerAttributes];
  v21 = NCIsEqual(v19, v20);

  if (!v21)
  {
    goto LABEL_15;
  }

  v22 = [(NCNotificationSound *)self songPath];
  v23 = [v5 songPath];
  v24 = NCIsEqual(v22, v23);

  if (!v24)
  {
    goto LABEL_15;
  }

  v25 = [(NCNotificationSound *)self alertConfiguration];
  v26 = [v5 alertConfiguration];
  v27 = NCIsEqual(v25, v26);

LABEL_16:
  return v27;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [NCMutableNotificationSound alloc];

  return [(NCNotificationSound *)v4 initWithNotificationSound:self];
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(NCNotificationSound *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = MEMORY[0x277CF0C00];
  v5 = a3;
  v6 = [v4 builderWithObject:self];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__NCNotificationSound_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_279E0D9F0;
  v7 = v6;
  v11 = v7;
  v12 = self;
  [v7 appendBodySectionWithName:0 multilinePrefix:v5 block:v10];

  v8 = v7;
  return v7;
}

void __61__NCNotificationSound_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendInteger:objc_msgSend(*(a1 + 40) withName:{"soundType"), @"soundType"}];
  v3 = [*(a1 + 32) appendInteger:objc_msgSend(*(a1 + 40) withName:{"systemSoundID"), @"systemSoundID"}];
  v4 = [*(a1 + 32) appendInteger:objc_msgSend(*(a1 + 40) withName:{"soundBehavior"), @"soundBehavior"}];
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) ringtoneName];
  v7 = [v5 appendObject:v6 withName:@"ringtoneName" skipIfNil:1];

  v8 = *(a1 + 32);
  v9 = [*(a1 + 40) vibrationPattern];
  [v8 appendDictionarySection:v9 withName:@"vibrationPattern" skipIfEmpty:1];

  v10 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"isRepeating"), @"isRepeating"}];
  v11 = *(a1 + 32);
  [*(a1 + 40) maxDuration];
  v12 = [v11 appendTimeInterval:@"maxDuration" withName:0 decomposeUnits:?];
  v13 = *(a1 + 32);
  v14 = [*(a1 + 40) controllerAttributes];
  [v13 appendDictionarySection:v14 withName:@"controllerAttributes" skipIfEmpty:1];

  v15 = *(a1 + 32);
  v16 = [*(a1 + 40) alertConfiguration];
  v17 = [v15 appendObject:v16 withName:@"alertConfiguration" skipIfNil:1];

  v18 = *(a1 + 32);
  v20 = [*(a1 + 40) songPath];
  v19 = [v18 appendObject:v20 withName:@"songPath" skipIfNil:1];
}

- (id)succinctDescription
{
  v2 = [(NCNotificationSound *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", -[NCNotificationSound soundType](self, "soundType")];
  v5 = [v3 appendObject:v4 withName:@"soundType"];

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", -[NCNotificationSound systemSoundID](self, "systemSoundID")];
  v7 = [v3 appendObject:v6 withName:@"systemSoundID" skipIfNil:1];

  v8 = [(NCNotificationSound *)self ringtoneName];
  v9 = [v3 appendObject:v8 withName:@"ringtoneName" skipIfNil:1];

  v10 = [(NCNotificationSound *)self alertConfiguration];
  v11 = [v3 appendObject:v10 withName:@"alertConfiguration" skipIfNil:1];

  v12 = [(NCNotificationSound *)self songPath];
  v13 = [v3 appendObject:v12 withName:@"songPath" skipIfNil:1];

  return v3;
}

@end