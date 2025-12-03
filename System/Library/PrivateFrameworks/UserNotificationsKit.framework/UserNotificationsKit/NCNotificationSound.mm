@interface NCNotificationSound
- (BOOL)isEqual:(id)equal;
- (NCNotificationSound)initWithNotificationSound:(id)sound;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)mutableCopyWithZone:(_NSZone *)zone;
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

- (NCNotificationSound)initWithNotificationSound:(id)sound
{
  soundCopy = sound;
  v23.receiver = self;
  v23.super_class = NCNotificationSound;
  v5 = [(NCNotificationSound *)&v23 init];
  if (v5)
  {
    v5->_soundType = [soundCopy soundType];
    v5->_systemSoundID = [soundCopy systemSoundID];
    v5->_soundBehavior = [soundCopy soundBehavior];
    ringtoneName = [soundCopy ringtoneName];
    v7 = [ringtoneName copy];
    ringtoneName = v5->_ringtoneName;
    v5->_ringtoneName = v7;

    vibrationPattern = [soundCopy vibrationPattern];
    v10 = [vibrationPattern copy];
    vibrationPattern = v5->_vibrationPattern;
    v5->_vibrationPattern = v10;

    v5->_repeats = [soundCopy isRepeating];
    [soundCopy maxDuration];
    v5->_maxDuration = v12;
    controllerAttributes = [soundCopy controllerAttributes];
    v14 = [controllerAttributes copy];
    controllerAttributes = v5->_controllerAttributes;
    v5->_controllerAttributes = v14;

    songPath = [soundCopy songPath];
    v17 = [songPath copy];
    songPath = v5->_songPath;
    v5->_songPath = v17;

    alertConfiguration = [soundCopy alertConfiguration];
    v20 = [alertConfiguration copy];
    alertConfiguration = v5->_alertConfiguration;
    v5->_alertConfiguration = v20;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
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

  v5 = equalCopy;
  if (!v5)
  {
    goto LABEL_15;
  }

  soundType = [(NCNotificationSound *)self soundType];
  if (soundType != [v5 soundType])
  {
    goto LABEL_15;
  }

  systemSoundID = [(NCNotificationSound *)self systemSoundID];
  if (systemSoundID != [v5 systemSoundID])
  {
    goto LABEL_15;
  }

  soundBehavior = [(NCNotificationSound *)self soundBehavior];
  if (soundBehavior != [v5 soundBehavior])
  {
    goto LABEL_15;
  }

  ringtoneName = [(NCNotificationSound *)self ringtoneName];
  ringtoneName2 = [v5 ringtoneName];
  v11 = NCIsEqual(ringtoneName, ringtoneName2);

  if (!v11)
  {
    goto LABEL_15;
  }

  vibrationPattern = [(NCNotificationSound *)self vibrationPattern];
  vibrationPattern2 = [v5 vibrationPattern];
  v14 = NCIsEqual(vibrationPattern, vibrationPattern2);

  if (!v14)
  {
    goto LABEL_15;
  }

  isRepeating = [(NCNotificationSound *)self isRepeating];
  if (isRepeating != [v5 isRepeating])
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

  controllerAttributes = [(NCNotificationSound *)self controllerAttributes];
  controllerAttributes2 = [v5 controllerAttributes];
  v21 = NCIsEqual(controllerAttributes, controllerAttributes2);

  if (!v21)
  {
    goto LABEL_15;
  }

  songPath = [(NCNotificationSound *)self songPath];
  songPath2 = [v5 songPath];
  v24 = NCIsEqual(songPath, songPath2);

  if (!v24)
  {
    goto LABEL_15;
  }

  alertConfiguration = [(NCNotificationSound *)self alertConfiguration];
  alertConfiguration2 = [v5 alertConfiguration];
  v27 = NCIsEqual(alertConfiguration, alertConfiguration2);

LABEL_16:
  return v27;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [NCMutableNotificationSound alloc];

  return [(NCNotificationSound *)v4 initWithNotificationSound:self];
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(NCNotificationSound *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v4 = MEMORY[0x277CF0C00];
  prefixCopy = prefix;
  v6 = [v4 builderWithObject:self];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__NCNotificationSound_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_279E0D9F0;
  v7 = v6;
  v11 = v7;
  selfCopy = self;
  [v7 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v10];

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
  succinctDescriptionBuilder = [(NCNotificationSound *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", -[NCNotificationSound soundType](self, "soundType")];
  v5 = [v3 appendObject:v4 withName:@"soundType"];

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", -[NCNotificationSound systemSoundID](self, "systemSoundID")];
  v7 = [v3 appendObject:v6 withName:@"systemSoundID" skipIfNil:1];

  ringtoneName = [(NCNotificationSound *)self ringtoneName];
  v9 = [v3 appendObject:ringtoneName withName:@"ringtoneName" skipIfNil:1];

  alertConfiguration = [(NCNotificationSound *)self alertConfiguration];
  v11 = [v3 appendObject:alertConfiguration withName:@"alertConfiguration" skipIfNil:1];

  songPath = [(NCNotificationSound *)self songPath];
  v13 = [v3 appendObject:songPath withName:@"songPath" skipIfNil:1];

  return v3;
}

@end