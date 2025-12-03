@interface PRSHostContext
+ (void)hostContextWithCompletion:(id)completion;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (PRSHostContext)init;
- (PRSHostContext)initWithAuditToken:(id)token primaryDisplay:(id)display connectedDisplays:(id)displays hostApplicationIdentifier:(id)identifier userInterfaceStyle:(int64_t)style;
- (PRSHostContext)initWithBSXPCCoder:(id)coder;
- (PRSHostContext)initWithCoder:(id)coder;
- (unint64_t)hash;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PRSHostContext

+ (void)hostContextWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = completionCopy;
  if (completionCopy)
  {
    v5 = completionCopy;
    BSDispatchMain();
  }
}

void __44__PRSHostContext_hostContextWithCompletion___block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  (*(*(a1 + 32) + 16))();
}

- (PRSHostContext)init
{
  v86 = *MEMORY[0x1E69E9840];
  BSDispatchQueueAssertMain();
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v4 = bundleIdentifier;
  if (bundleIdentifier)
  {
    v54 = bundleIdentifier;
  }

  else
  {
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    processName = [processInfo processName];

    v54 = processName;
  }

  if (!NSClassFromString(&cfstr_Uiapplication.isa))
  {
    v16 = PRSLogCommon();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C26FF000, v16, OS_LOG_TYPE_DEFAULT, "Not a UIKit app; bailing on most of PRSHostContext creation", buf, 2u);
    }

    v47 = 0;
    goto LABEL_76;
  }

  array = [MEMORY[0x1E695DF70] array];
  v79 = 0;
  v80 = &v79;
  v81 = 0x2050000000;
  v7 = getUIApplicationClass_softClass;
  v82 = getUIApplicationClass_softClass;
  if (!getUIApplicationClass_softClass)
  {
    *buf = MEMORY[0x1E69E9820];
    v75 = 3221225472;
    v76 = __getUIApplicationClass_block_invoke;
    v77 = &unk_1E818CC28;
    v78 = &v79;
    __getUIApplicationClass_block_invoke(buf);
    v7 = v80[3];
  }

  v8 = v7;
  _Block_object_dispose(&v79, 8);
  v79 = 0;
  v80 = &v79;
  v81 = 0x2050000000;
  v9 = getUIScreenClass_softClass;
  v82 = getUIScreenClass_softClass;
  if (!getUIScreenClass_softClass)
  {
    *buf = MEMORY[0x1E69E9820];
    v75 = 3221225472;
    v76 = __getUIScreenClass_block_invoke;
    v77 = &unk_1E818CC28;
    v78 = &v79;
    __getUIScreenClass_block_invoke(buf);
    v9 = v80[3];
  }

  v60 = v9;
  v10 = v9;
  _Block_object_dispose(&v79, 8);
  v79 = 0;
  v80 = &v79;
  v81 = 0x2050000000;
  v11 = getUIWindowSceneClass_softClass;
  v82 = getUIWindowSceneClass_softClass;
  if (!getUIWindowSceneClass_softClass)
  {
    *buf = MEMORY[0x1E69E9820];
    v75 = 3221225472;
    v76 = __getUIWindowSceneClass_block_invoke;
    v77 = &unk_1E818CC28;
    v78 = &v79;
    __getUIWindowSceneClass_block_invoke(buf);
    v11 = v80[3];
  }

  v12 = v11;
  _Block_object_dispose(&v79, 8);
  if (!v7 || ([v7 performSelector:sel_sharedApplication], v13 = objc_claimAutoreleasedReturnValue(), (v14 = v13) == 0))
  {
    v51 = 0;
    goto LABEL_19;
  }

  connectedScenes = [v13 connectedScenes];
  v51 = v14;

  if (!connectedScenes)
  {
LABEL_19:
    v55 = 0;
    goto LABEL_20;
  }

  v55 = [v14 valueForKey:@"connectedScenes"];
LABEL_20:
  v17 = v60;
  if (v60)
  {
    if (objc_opt_respondsToSelector())
    {
      v17 = [v60 performSelector:sel_screens];
    }

    else
    {
      v17 = 0;
    }
  }

  v52 = v17;
  if (![v17 count])
  {
    v57 = 0;
    goto LABEL_73;
  }

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  obj = v52;
  v61 = [obj countByEnumeratingWithState:&v70 objects:v85 count:16];
  if (!v61)
  {
    v57 = 0;
    goto LABEL_72;
  }

  v57 = 0;
  if (v55)
  {
    v18 = v11 == 0;
  }

  else
  {
    v18 = 1;
  }

  v19 = !v18;
  v58 = v19;
  v59 = *v71;
  do
  {
    for (i = 0; i != v61; ++i)
    {
      if (*v71 != v59)
      {
        objc_enumerationMutation(obj);
      }

      v20 = *(*(&v70 + 1) + 8 * i);
      [v20 bounds];
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v29 = 1.0;
      if (objc_opt_respondsToSelector())
      {
        v30 = [v20 valueForKey:@"scale"];
        v31 = v30;
        if (v30)
        {
          [v30 doubleValue];
          v29 = v32;
        }
      }

      if (v60 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        displayConfiguration = [v20 displayConfiguration];
        hardwareIdentifier = [displayConfiguration hardwareIdentifier];
        isMainDisplay = [displayConfiguration isMainDisplay];

        if (isMainDisplay)
        {
          v63 = 1;
          v64 = @"main";
          goto LABEL_46;
        }
      }

      else
      {
        hardwareIdentifier = 0;
      }

      v64 = [MEMORY[0x1E696AEC0] stringWithFormat:@"display-%lu", objc_msgSend(obj, "indexOfObject:", v20)];
      v63 = 0;
LABEL_46:

      if (v58)
      {
        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        v36 = v55;
        interfaceOrientation = 0;
        v38 = [v36 countByEnumeratingWithState:&v66 objects:v84 count:16];
        if (v38)
        {
          v39 = *v67;
          do
          {
            for (j = 0; j != v38; ++j)
            {
              if (*v67 != v39)
              {
                objc_enumerationMutation(v36);
              }

              v41 = *(*(&v66 + 1) + 8 * j);
              if (objc_opt_isKindOfClass())
              {
                if (objc_opt_respondsToSelector())
                {
                  v42 = [v41 valueForKey:@"screen"];
                }

                else
                {
                  v42 = 0;
                }

                if ([v42 isEqual:v20])
                {
                  interfaceOrientation = [v41 interfaceOrientation];
                }
              }
            }

            v38 = [v36 countByEnumeratingWithState:&v66 objects:v84 count:16];
          }

          while (v38);
        }
      }

      else
      {
        interfaceOrientation = 0;
      }

      if (BSInterfaceOrientationIsValid())
      {
        v43 = [[PRSDisplayInfo alloc] initWithHardwareIdentifier:v64 interfaceOrientation:interfaceOrientation bounds:v63 pointScale:v22 isMainDisplay:v24, v26, v28, v29];
        [array addObject:v43];
        if (v63)
        {
          v44 = v43;

          v57 = v44;
        }
      }
    }

    v61 = [obj countByEnumeratingWithState:&v70 objects:v85 count:16];
  }

  while (v61);
LABEL_72:

LABEL_73:
  v45 = [array copy];

  if (!v45)
  {
    v47 = v57;
LABEL_76:
    v57 = v47;
    v83 = v47;
    v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v83 count:1];
    v46 = [(PRSHostContext *)self initWithAuditToken:0 primaryDisplay:v57 connectedDisplays:v45 hostApplicationIdentifier:v54 userInterfaceStyle:0];
    goto LABEL_77;
  }

  v46 = [(PRSHostContext *)self initWithAuditToken:0 primaryDisplay:v57 connectedDisplays:v45 hostApplicationIdentifier:v54 userInterfaceStyle:0];
LABEL_77:
  v48 = v46;

  v49 = *MEMORY[0x1E69E9840];
  return v48;
}

- (PRSHostContext)initWithAuditToken:(id)token primaryDisplay:(id)display connectedDisplays:(id)displays hostApplicationIdentifier:(id)identifier userInterfaceStyle:(int64_t)style
{
  tokenCopy = token;
  displayCopy = display;
  displaysCopy = displays;
  identifierCopy = identifier;
  if (!tokenCopy)
  {
    tokenCopy = [MEMORY[0x1E698E620] tokenForCurrentProcess];
  }

  if (![identifierCopy length])
  {
    bundleID = [tokenCopy bundleID];

    identifierCopy = bundleID;
  }

  v25.receiver = self;
  v25.super_class = PRSHostContext;
  v17 = [(PRSHostContext *)&v25 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_primaryDisplayInfo, display);
    v19 = [displaysCopy copy];
    v20 = v19;
    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = MEMORY[0x1E695E0F0];
    }

    objc_storeStrong(&v18->_connectedDisplays, v21);

    v22 = [identifierCopy copy];
    hostApplicationIdentifier = v18->_hostApplicationIdentifier;
    v18->_hostApplicationIdentifier = v22;

    v18->_userInterfaceStyle = style;
    objc_storeStrong(&v18->_auditToken, tokenCopy);
  }

  return v18;
}

- (unint64_t)hash
{
  v3 = [(BSAuditToken *)self->_auditToken hash];
  v4 = [(PRSDisplayInfo *)self->_primaryDisplayInfo hash]^ v3;
  v5 = [(NSArray *)self->_connectedDisplays hash];
  v6 = [(NSString *)self->_hostApplicationIdentifier hash];
  v7 = 0xBF58476D1CE4E5B9 * (v4 ^ v5 ^ v6 ^ ((v4 ^ v5 ^ v6) >> 30));
  return (0x94D049BB133111EBLL * (v7 ^ (v7 >> 27))) ^ ((0x94D049BB133111EBLL * (v7 ^ (v7 >> 27))) >> 31);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    v6 = equalCopy;
    if (v5)
    {
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    v9 = v7;

    if (v9 && (auditToken = self->_auditToken, v11 = v9->_auditToken, BSEqualObjects()) && (primaryDisplayInfo = self->_primaryDisplayInfo, v13 = v9->_primaryDisplayInfo, BSEqualObjects()) && (connectedDisplays = self->_connectedDisplays, v15 = v9->_connectedDisplays, BSEqualObjects()))
    {
      hostApplicationIdentifier = self->_hostApplicationIdentifier;
      v17 = v9->_hostApplicationIdentifier;
      v8 = BSEqualObjects();
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendObject:self->_primaryDisplayInfo withName:@"_primaryDisplayInfo"];
  v5 = [v3 appendInt64:self->_userInterfaceStyle withName:@"userInterfaceStyle"];
  if ([(NSArray *)self->_connectedDisplays count]> 1 || !self->_primaryDisplayInfo)
  {
    [v3 appendArraySection:self->_connectedDisplays withName:@"_connectedDisplays" skipIfEmpty:0];
  }

  v6 = [v3 appendObject:self->_hostApplicationIdentifier withName:@"_hostApplicationIdentifier"];
  build = [v3 build];

  return build;
}

- (void)encodeWithCoder:(id)coder
{
  primaryDisplayInfo = self->_primaryDisplayInfo;
  coderCopy = coder;
  [coderCopy encodeObject:primaryDisplayInfo forKey:@"_primaryDisplayInfo"];
  [coderCopy encodeObject:self->_connectedDisplays forKey:@"_connectedDisplays"];
  [coderCopy encodeObject:self->_hostApplicationIdentifier forKey:@"_hostApplicationIdentifier"];
  [coderCopy encodeInteger:self->_userInterfaceStyle forKey:@"_userInterfaceStyle"];
}

- (PRSHostContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_self();
  v6 = [coderCopy decodeObjectOfClass:v5 forKey:@"_auditToken"];

  v7 = [coderCopy decodeIntegerForKey:@"_userInterfaceStyle"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_primaryDisplayInfo"];
  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = objc_opt_self();
  v12 = [v9 setWithObjects:{v10, v11, 0}];
  v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"_connectedDisplays"];

  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_hostApplicationIdentifier"];

  v15 = [(PRSHostContext *)self initWithAuditToken:v6 primaryDisplay:v8 connectedDisplays:v13 hostApplicationIdentifier:v14 userInterfaceStyle:v7];
  return v15;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  primaryDisplayInfo = self->_primaryDisplayInfo;
  coderCopy = coder;
  [coderCopy encodeObject:primaryDisplayInfo forKey:@"_primaryDisplayInfo"];
  [coderCopy encodeObject:self->_connectedDisplays forKey:@"_connectedDisplays"];
  [coderCopy encodeObject:self->_hostApplicationIdentifier forKey:@"_hostApplicationIdentifier"];
  [coderCopy encodeInt64:self->_userInterfaceStyle forKey:@"_userInterfaceStyle"];
  [coderCopy encodeObject:self->_auditToken forKey:@"_auditToken"];
}

- (PRSHostContext)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_self();
  v6 = [coderCopy decodeObjectOfClass:v5 forKey:@"_auditToken"];

  v7 = [coderCopy decodeInt64ForKey:@"_userInterfaceStyle"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_primaryDisplayInfo"];
  v9 = objc_opt_class();
  v10 = [coderCopy decodeCollectionOfClass:v9 containingClass:objc_opt_class() forKey:@"_connectedDisplays"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_hostApplicationIdentifier"];

  v12 = [(PRSHostContext *)self initWithAuditToken:v6 primaryDisplay:v8 connectedDisplays:v10 hostApplicationIdentifier:v11 userInterfaceStyle:v7];
  return v12;
}

@end