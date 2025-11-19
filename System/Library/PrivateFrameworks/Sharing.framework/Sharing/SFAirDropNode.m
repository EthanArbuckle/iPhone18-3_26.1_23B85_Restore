@interface SFAirDropNode
+ (id)nodeWithSFNode:(__SFNode *)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (SFAirDropNode)init;
- (id)displayNameForLocale:(id)a3;
- (unint64_t)hash;
- (void)_updateDisplayIconWithSFNode:(__SFNode *)a3;
- (void)appendDiscoveryInfoToDisplayName:(id)a3;
- (void)cancelSend;
- (void)dealloc;
- (void)handleOperationCallback:(__SFOperation *)a3 event:(int64_t)a4 withResults:(id)a5;
- (void)setRangingMeasurement:(id)a3;
- (void)updateDisplayName;
- (void)updateWithSFNode:(__SFNode *)a3;
@end

@implementation SFAirDropNode

+ (id)nodeWithSFNode:(__SFNode *)a3
{
  v4 = objc_alloc_init(SFAirDropNode);
  [(SFAirDropNode *)v4 updateWithSFNode:a3];

  return v4;
}

- (SFAirDropNode)init
{
  v6.receiver = self;
  v6.super_class = SFAirDropNode;
  v2 = [(SFAirDropNode *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    discoveryDate = v2->_discoveryDate;
    v2->_discoveryDate = v3;

    v2->_sender = 0;
  }

  return v2;
}

- (void)dealloc
{
  CGImageRelease(self->_displayIcon);
  v3.receiver = self;
  v3.super_class = SFAirDropNode;
  [(SFAirDropNode *)&v3 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if (-[SFAirDropNode isSuggestion](self, "isSuggestion") && [v5 isSuggestion])
    {
      realName = self->_realName;
      v7 = [v5 realName];
      v8 = [(NSString *)realName isEqualToString:v7];
    }

    else
    {
      v7 = [(SFAirDropNode *)self node];
      v8 = !valuesChanged(v7, [v5 node]);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v2 = [(SFAirDropNode *)self node];
  v3 = CFHash(v2);

  return v3;
}

- (NSString)description
{
  objc_opt_class();
  NSAppendPrintF();
  v18 = 0;
  realName = self->_realName;
  NSAppendPrintF();
  v3 = v18;

  v4 = [(NSString *)self->_displayName stringByReplacingOccurrencesOfString:@"\n" withString:@" ", realName, self];
  NSAppendPrintF();
  v5 = v3;

  secondaryName = self->_secondaryName;
  NSAppendPrintF();
  v6 = v5;

  self->_me;
  NSAppendPrintF();
  v7 = v6;

  self->_unknown;
  NSAppendPrintF();
  v8 = v7;

  self->_rapport;
  NSAppendPrintF();
  v9 = v8;

  self->_ultraWideBindCapable;
  NSAppendPrintF();
  v10 = v9;

  selectionReason = self->_selectionReason;
  if (selectionReason >= 1)
  {
    NSAppendPrintF();
    v12 = v10;

    v10 = v12;
  }

  if (self->_rangingMeasurement)
  {
    NSAppendPrintF();
    v13 = v10;

    v10 = v13;
  }

  NSAppendPrintF();
  v14 = v10;

  return v10;
}

- (void)updateWithSFNode:(__SFNode *)a3
{
  [(SFAirDropNode *)self _updateDisplayIconWithSFNode:?];
  self->_selectionReason = SFNodeGetSelectionReason(a3);
  self->_supportsCredentials = SFNodeSupportsCredentials(a3) != 0;
  self->_supportsFMF = SFNodeSupportsFMF(a3);
  self->_supportsPasses = SFNodeSupportsPasses(a3) != 0;
  self->_supportsMixedTypes = SFNodeSupportsMixedTypes(a3) != 0;
  self->_ultraWideBindCapable = SFNodeSupportsUWB(a3) != 0;
  v14 = SFNodeCopyKinds(a3);
  self->_disabled = [(__CFSet *)v14 containsObject:@"Disabled"];
  self->_me = [(__CFSet *)v14 containsObject:@"Me"];
  self->_unknown = [(__CFSet *)v14 containsObject:@"Unknown"];
  self->_monogram = [(__CFSet *)v14 containsObject:@"Monogram"];
  self->_classroom = [(__CFSet *)v14 containsObject:@"Classroom"];
  self->_classroomCourse = [(__CFSet *)v14 containsObject:@"ClassroomCourse"];
  self->_classroomGroup = [(__CFSet *)v14 containsObject:@"ClassroomGroup"];
  self->_suggestion = [(__CFSet *)v14 containsObject:@"Suggestion"];
  self->_rapport = [(__CFSet *)v14 containsObject:@"Rapport"];
  [(SFAirDropNode *)self setNode:a3];
  v5 = SFNodeCopyRealName(a3);
  [(SFAirDropNode *)self setRealName:v5];

  v6 = SFNodeCopySecondaryName(a3);
  [(SFAirDropNode *)self setSecondaryName:v6];

  v7 = SFNodeCopyContactIdentifier(a3);
  [(SFAirDropNode *)self setContactIdentifier:v7];

  v8 = SFNodeCopyModel(a3);
  [(SFAirDropNode *)self setModel:v8];

  v9 = SFNodeCopyTransportBundleID(a3);
  if (v9)
  {
    [(SFAirDropNode *)self setTransportBundleID:v9];
  }

  v10 = SFNodeCopyHandles(a3);
  [(SFAirDropNode *)self setActualHandles:v10];

  v11 = SFNodeCopyRangingData(a3);
  v12 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v11 error:0];
  if (IsAppleInternalBuild())
  {
    if (CFPreferencesGetAppBooleanValue(@"ShowKnownInMagicHead", @"com.apple.Sharing", 0))
    {
      v13 = [(SFAirDropNode *)self rangingMeasurement];

      if (v13)
      {
        if (!v12)
        {
          v12 = [(SFAirDropNode *)self rangingMeasurement];
        }
      }
    }
  }

  [(SFAirDropNode *)self updateDisplayName];
  [(SFAirDropNode *)self setRangingMeasurement:v12];
}

- (void)_updateDisplayIconWithSFNode:(__SFNode *)a3
{
  v5 = [(SFAirDropNode *)self node];
  if (v5)
  {
    v6 = [(SFAirDropNode *)self node];
    IconData = SFNodeGetIconData(v6);
  }

  else
  {
    IconData = 0;
  }

  if (a3)
  {
    v8 = SFNodeGetIconData(a3);
    if (v8)
    {
      v9 = v8;
      if (valuesChanged(IconData, v8))
      {
        v10 = SFCreateCGImageFromData(v9);
        [(SFAirDropNode *)self setDisplayIcon:v10];

        CGImageRelease(v10);
      }
    }
  }
}

- (void)setRangingMeasurement:(id)a3
{
  v5 = a3;
  p_rangingMeasurement = &self->_rangingMeasurement;
  v7 = self->_rangingMeasurement;
  v8 = v5;
  v18 = v8;
  if (v7 == v8)
  {

LABEL_18:
    goto LABEL_19;
  }

  if ((v8 == 0) == (v7 != 0))
  {

    goto LABEL_7;
  }

  v9 = [(CURangingMeasurement *)v7 isEqual:v8];

  if ((v9 & 1) == 0)
  {
LABEL_7:
    objc_storeStrong(&self->_rangingMeasurement, a3);
    v10 = +[SFSettingsDomain rootSettings];
    v11 = [v10 magicHeadSettings];
    v12 = [v11 showRangingValues];

    if (!v12)
    {
      goto LABEL_19;
    }

    v13 = [(CURangingMeasurement *)*p_rangingMeasurement flags];
    v14 = objc_opt_new();
    v7 = v14;
    if ((v13 & 8) != 0)
    {
      [(CURangingMeasurement *)*p_rangingMeasurement ptsScore];
      [(CURangingMeasurement *)v7 appendFormat:@"%.2f", v15];
    }

    else
    {
      [(CURangingMeasurement *)v14 appendString:@"nil"];
    }

    [(CURangingMeasurement *)v7 appendString:@", "];
    if ((v13 & 2) != 0)
    {
      [(CURangingMeasurement *)*p_rangingMeasurement horizontalAngle];
      [(CURangingMeasurement *)v7 appendFormat:@"%.2f", v16];
    }

    else
    {
      [(CURangingMeasurement *)v7 appendString:@"nil"];
    }

    [(CURangingMeasurement *)v7 appendString:@"°"];
    [(CURangingMeasurement *)v7 appendString:@", "];
    if (v13)
    {
      [(CURangingMeasurement *)*p_rangingMeasurement distanceMeters];
      [(CURangingMeasurement *)v7 appendFormat:@"%.2f", v17];
    }

    else
    {
      [(CURangingMeasurement *)v7 appendString:@"nil"];
    }

    [(CURangingMeasurement *)v7 appendString:@"↔︎"];
    [(SFAirDropNode *)self appendDiscoveryInfoToDisplayName:v7];
    [(SFAirDropNode *)self setDisplayName:v7];
    goto LABEL_18;
  }

LABEL_19:
}

- (void)updateDisplayName
{
  v3 = [(SFAirDropNode *)self node];

  if (self->_me && enableDeviceImages())
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = SFNodeCopyModel(v3);
    v27 = [v4 stringWithFormat:@"My %@", v5];

    [(SFAirDropNode *)self setSecondaryName:&stru_1F1D30528];
    v6 = v27;
  }

  else
  {
    v6 = 0;
  }

  v28 = v6;
  if (![(__CFString *)v6 length]&& (self->_unknown || self->_classroom))
  {
    v8 = SFNodeCopyDisplayName(v3);

    v7 = v8;
  }

  else
  {
    v7 = v28;
  }

  v29 = v7;
  if ([(__CFString *)v7 length]|| self->_me)
  {
    v9 = v29;
  }

  else
  {
    v26 = SFNodeCopyNickName(v3);

    v9 = v26;
  }

  v30 = v9;
  if ([(__CFString *)v9 length]|| !self->_me)
  {
    v11 = v30;
  }

  else
  {
    v10 = SFNodeCopyComputerName(v3);

    v11 = v10;
  }

  v31 = v11;
  if ([(__CFString *)v11 length]|| !self->_suggestion)
  {
    v13 = v31;
  }

  else
  {
    v12 = SFNodeCopyDisplayName(v3);

    v13 = v12;
  }

  v32 = v13;
  if ([(__CFString *)v13 length])
  {
    v14 = v32;
  }

  else
  {
    Name = SFNodeCopyFirstName(v3);
    v16 = SFNodeCopyLastName(v3);
    v17 = objc_opt_new();
    nameComponents = self->_nameComponents;
    self->_nameComponents = v17;

    [(NSPersonNameComponents *)self->_nameComponents setGivenName:Name];
    [(NSPersonNameComponents *)self->_nameComponents setFamilyName:v16];
    v19 = objc_opt_new();
    [v19 setStyle:0];
    v20 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
    [v19 set_locale:v20];

    v21 = [v19 stringFromPersonNameComponents:self->_nameComponents];

    v14 = v21;
  }

  v33 = v14;
  [(SFAirDropNode *)self setDisplayName:v14];
  v22 = +[SFSettingsDomain rootSettings];
  v23 = [v22 magicHeadSettings];
  v24 = [v23 showRangingValues];

  if (v24)
  {
    v25 = [v33 mutableCopy];
    [(SFAirDropNode *)self appendDiscoveryInfoToDisplayName:v25];
    [(SFAirDropNode *)self setDisplayName:v25];
  }
}

- (void)appendDiscoveryInfoToDisplayName:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SFAirDropNode *)self node];
  v6 = SFNodeCopySiblingNodes(v5);

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v6;
  v8 = [(__CFArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (!v8)
  {

    goto LABEL_18;
  }

  v9 = v8;
  v10 = 0;
  v11 = 0;
  v12 = *v18;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v18 != v12)
      {
        objc_enumerationMutation(v7);
      }

      v14 = SFNodeCopyKinds(*(*(&v17 + 1) + 8 * i));
      v15 = v14;
      if (v11 & v10)
      {
        v10 = 1;
LABEL_9:
        v11 = 1;
        goto LABEL_11;
      }

      if (([(__CFSet *)v14 containsObject:@"Rapport", v17]& 1) != 0)
      {
        goto LABEL_9;
      }

      v10 |= [(__CFSet *)v15 containsObject:@"Bonjour"];
LABEL_11:
    }

    v9 = [(__CFArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  }

  while (v9);

  if (v11)
  {
    [v4 appendString:{@", B"}];
  }

  if (v10)
  {
    [v4 appendString:{@", A"}];
  }

LABEL_18:

  v16 = *MEMORY[0x1E69E9840];
}

- (id)displayNameForLocale:(id)a3
{
  v4 = a3;
  v5 = +[SFSettingsDomain rootSettings];
  v6 = [v5 magicHeadSettings];
  v7 = [v6 showRangingValues];

  if (v7)
  {
    v8 = [(SFAirDropNode *)self displayName];
  }

  else
  {
    v9 = v4;
    if (!v9)
    {
      v9 = [MEMORY[0x1E695DF58] currentLocale];
      v10 = airdrop_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(SFAirDropNode *)v9 displayNameForLocale:v10];
      }
    }

    v11 = self->_nameComponents;
    if (v11)
    {
      v12 = objc_opt_new();
      [v12 setStyle:0];
      [v12 set_locale:v9];
      v8 = [v12 stringFromPersonNameComponents:v11];
    }

    else
    {
      v8 = [(SFAirDropNode *)self displayName];
    }
  }

  return v8;
}

- (void)cancelSend
{
  sender = self->_sender;
  if (sender)
  {
    SFOperationCancel(sender);
    CFRelease(self->_sender);
    self->_sender = 0;
  }
}

- (void)handleOperationCallback:(__SFOperation *)a3 event:(int64_t)a4 withResults:(id)a5
{
  v8 = a5;
  if (a4 > 4)
  {
    if (a4 <= 0xF)
    {
      if (((1 << a4) & 0xC9E0) != 0)
      {
        goto LABEL_17;
      }

      if (a4 != 9)
      {
        if (a4 == 10)
        {
          v9 = airdrop_log();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            [SFAirDropNode handleOperationCallback:v8 event:v9 withResults:?];
          }

          goto LABEL_12;
        }

        goto LABEL_14;
      }

LABEL_12:
      [(SFAirDropNode *)self cancelSend];
      goto LABEL_17;
    }

LABEL_14:
    v10 = airdrop_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [SFAirDropNode handleOperationCallback:a4 event:v8 withResults:v10];
    }

    goto LABEL_17;
  }

  if (a4 == 2)
  {
    SFOperationResume(a3);
    goto LABEL_17;
  }

  if (a4 != 3)
  {
    if (a4 == 4)
    {
      goto LABEL_12;
    }

    goto LABEL_14;
  }

LABEL_17:
}

- (void)displayNameForLocale:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1A9662000, a2, OS_LOG_TYPE_ERROR, "displayNameForLocale: inLocale = nil, using currentLocale: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)startSendForBundleID:(NSObject *)a3 sessionID:items:description:previewImage:fromShareSheet:.cold.1(const char *a1, void *a2, NSObject *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = NSStringFromSelector(a1);
  v6 = [a2 valueForKeyPath:@"class"];
  v8 = 138412802;
  v9 = v5;
  v10 = 2112;
  v11 = v6;
  v12 = 2112;
  v13 = a2;
  _os_log_debug_impl(&dword_1A9662000, a3, OS_LOG_TYPE_DEBUG, "AirDrop %@ Items \nTypes: [%@], \nValues: [%@]", &v8, 0x20u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)handleOperationCallback:(uint64_t)a1 event:(NSObject *)a2 withResults:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1A9662000, a2, OS_LOG_TYPE_ERROR, "Sender kSFOperationEventErrorOccured %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)handleOperationCallback:(uint64_t)a1 event:(uint64_t)a2 withResults:(NSObject *)a3 .cold.2(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v5 = a1;
  v13 = *MEMORY[0x1E69E9840];
  v7 = 138412802;
  v8 = SFOperationEventToString(a1);
  v9 = 1024;
  v10 = v5;
  v11 = 2112;
  v12 = a2;
  _os_log_error_impl(&dword_1A9662000, a3, OS_LOG_TYPE_ERROR, "Sender UNHANDLED EVENT %@ [%d] %@", &v7, 0x1Cu);
  v6 = *MEMORY[0x1E69E9840];
}

@end