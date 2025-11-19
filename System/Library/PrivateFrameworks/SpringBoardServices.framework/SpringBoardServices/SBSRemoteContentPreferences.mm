@interface SBSRemoteContentPreferences
- (BOOL)isEqual:(id)a3;
- (SBSRemoteContentPreferences)initWithCoder:(id)a3;
- (SBSRemoteContentPreferences)initWithConfiguration:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SBSRemoteContentPreferences

- (SBSRemoteContentPreferences)initWithConfiguration:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = SBSRemoteContentPreferences;
  v5 = [(SBSRemoteContentPreferences *)&v29 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [v4 objectForKey:@"dateTimeStyle"];
    v8 = v7;
    if (!v7)
    {
      v7 = &unk_1F05B4EF8;
    }

    v6->_dateTimeStyle = [v7 integerValue];

    v9 = [v4 objectForKey:@"backgroundStyle"];
    v10 = v9;
    if (!v9)
    {
      v9 = &unk_1F05B4EF8;
    }

    v6->_backgroundStyle = [v9 integerValue];

    v11 = [v4 objectForKey:@"homeGestureMode"];
    v12 = v11;
    if (!v11)
    {
      v11 = &unk_1F05B4F10;
    }

    v6->_homeGestureMode = [v11 integerValue];

    v13 = [v4 objectForKey:@"preferredNotificationListMode"];
    v14 = v13;
    if (!v13)
    {
      v13 = &unk_1F05B4EF8;
    }

    v6->_preferredNotificationListMode = [v13 integerValue];

    v15 = [v4 objectForKey:@"preferredLayout"];
    v16 = v15;
    if (!v15)
    {
      v15 = &unk_1F05B4EF8;
    }

    v6->_preferredLayout = [v15 integerValue];

    v17 = [v4 objectForKey:@"reducesWhitePoint"];
    v18 = v17;
    v19 = MEMORY[0x1E695E110];
    if (!v17)
    {
      v17 = MEMORY[0x1E695E110];
    }

    v6->_reducesWhitePoint = [v17 BOOLValue];

    v20 = [v4 objectForKey:@"suppressesNotifications"];
    v21 = v20;
    if (!v20)
    {
      v20 = MEMORY[0x1E695E118];
    }

    v6->_suppressesNotifications = [v20 BOOLValue];

    v22 = [v4 objectForKey:@"suppressesBottomEdgeContent"];
    v23 = v22;
    if (!v22)
    {
      v22 = v19;
    }

    v6->_suppressesBottomEdgeContent = [v22 BOOLValue];

    v24 = [v4 objectForKey:@"dismissesOnTap"];
    v25 = v24;
    if (!v24)
    {
      v24 = v19;
    }

    v6->_dismissesOnTap = [v24 BOOLValue];

    v26 = [v4 objectForKey:@"prefersInlinePresentation"];
    v27 = v26;
    if (!v26)
    {
      v26 = v19;
    }

    v6->_prefersInlinePresentation = [v26 BOOLValue];
  }

  return v6;
}

- (SBSRemoteContentPreferences)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = SBSRemoteContentPreferences;
  v5 = [(SBSRemoteContentPreferences *)&v7 init];
  if (v5)
  {
    v5->_dateTimeStyle = [v4 decodeIntegerForKey:@"dateTimeStyle"];
    v5->_backgroundStyle = [v4 decodeIntegerForKey:@"backgroundStyle"];
    v5->_homeGestureMode = [v4 decodeIntegerForKey:@"homeGestureMode"];
    v5->_preferredNotificationListMode = [v4 decodeIntegerForKey:@"preferredNotificationListMode"];
    v5->_preferredLayout = [v4 decodeIntegerForKey:@"preferredLayout"];
    v5->_reducesWhitePoint = [v4 decodeBoolForKey:@"reducesWhitePoint"];
    v5->_suppressesNotifications = [v4 decodeBoolForKey:@"suppressesNotifications"];
    v5->_suppressesBottomEdgeContent = [v4 decodeBoolForKey:@"suppressesBottomEdgeContent"];
    v5->_dismissesOnTap = [v4 decodeBoolForKey:@"dismissesOnTap"];
    v5->_prefersInlinePresentation = [v4 decodeBoolForKey:@"prefersInlinePresentation"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  dateTimeStyle = self->_dateTimeStyle;
  v5 = a3;
  [v5 encodeInteger:dateTimeStyle forKey:@"dateTimeStyle"];
  [v5 encodeInteger:self->_backgroundStyle forKey:@"backgroundStyle"];
  [v5 encodeInteger:self->_homeGestureMode forKey:@"homeGestureMode"];
  [v5 encodeInteger:self->_preferredNotificationListMode forKey:@"preferredNotificationListMode"];
  [v5 encodeInteger:self->_preferredLayout forKey:@"preferredLayout"];
  [v5 encodeBool:self->_reducesWhitePoint forKey:@"reducesWhitePoint"];
  [v5 encodeBool:self->_suppressesNotifications forKey:@"suppressesNotifications"];
  [v5 encodeBool:self->_suppressesBottomEdgeContent forKey:@"suppressesBottomEdgeContent"];
  [v5 encodeBool:self->_dismissesOnTap forKey:@"dismissesOnTap"];
  [v5 encodeBool:self->_prefersInlinePresentation forKey:@"prefersInlinePresentation"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  dateTimeStyle = self->_dateTimeStyle;
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __39__SBSRemoteContentPreferences_isEqual___block_invoke;
  v50[3] = &unk_1E7360C80;
  v7 = v4;
  v51 = v7;
  v8 = [v5 appendInteger:dateTimeStyle counterpart:v50];
  backgroundStyle = self->_backgroundStyle;
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __39__SBSRemoteContentPreferences_isEqual___block_invoke_2;
  v48[3] = &unk_1E7360C80;
  v10 = v7;
  v49 = v10;
  v11 = [v5 appendInteger:backgroundStyle counterpart:v48];
  homeGestureMode = self->_homeGestureMode;
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __39__SBSRemoteContentPreferences_isEqual___block_invoke_3;
  v46[3] = &unk_1E7360C80;
  v13 = v10;
  v47 = v13;
  v14 = [v5 appendInteger:homeGestureMode counterpart:v46];
  preferredNotificationListMode = self->_preferredNotificationListMode;
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __39__SBSRemoteContentPreferences_isEqual___block_invoke_4;
  v44[3] = &unk_1E7360C80;
  v16 = v13;
  v45 = v16;
  v17 = [v5 appendInteger:preferredNotificationListMode counterpart:v44];
  reducesWhitePoint = self->_reducesWhitePoint;
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __39__SBSRemoteContentPreferences_isEqual___block_invoke_5;
  v42[3] = &unk_1E7360CA8;
  v19 = v16;
  v43 = v19;
  v20 = [v5 appendBool:reducesWhitePoint counterpart:v42];
  suppressesNotifications = self->_suppressesNotifications;
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __39__SBSRemoteContentPreferences_isEqual___block_invoke_6;
  v40[3] = &unk_1E7360CA8;
  v22 = v19;
  v41 = v22;
  v23 = [v5 appendBool:suppressesNotifications counterpart:v40];
  suppressesBottomEdgeContent = self->_suppressesBottomEdgeContent;
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __39__SBSRemoteContentPreferences_isEqual___block_invoke_7;
  v38[3] = &unk_1E7360CA8;
  v25 = v22;
  v39 = v25;
  v26 = [v5 appendBool:suppressesBottomEdgeContent counterpart:v38];
  dismissesOnTap = self->_dismissesOnTap;
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __39__SBSRemoteContentPreferences_isEqual___block_invoke_8;
  v36[3] = &unk_1E7360CA8;
  v28 = v25;
  v37 = v28;
  v29 = [v5 appendBool:dismissesOnTap counterpart:v36];
  prefersInlinePresentation = self->_prefersInlinePresentation;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __39__SBSRemoteContentPreferences_isEqual___block_invoke_9;
  v34[3] = &unk_1E7360CA8;
  v35 = v28;
  v31 = v28;
  v32 = [v5 appendBool:prefersInlinePresentation counterpart:v34];
  LOBYTE(v28) = [v5 isEqual];

  return v28;
}

@end