@interface SBDisplayItem
+ (SBDisplayItem)displayItemWithProtobufRepresentation:(id)a3;
+ (SBDisplayItem)displayItemWithType:(int64_t)a3 bundleIdentifier:(id)a4 uniqueIdentifier:(id)a5;
+ (id)appLibraryDisplayItem;
+ (id)displayItemForLayoutElement:(id)a3;
+ (id)displayItemForWorkspaceEntity:(id)a3;
+ (id)homeScreenDisplayItem;
- (BOOL)isEqualToDisplayItemForFloatingDockSuggestions:(id)a3;
- (BOOL)isHomeScreenDisplayItem;
- (NSString)webClipIdentifier;
- (SBDisplayItem)init;
- (SBDisplayItem)initWithType:(int64_t)a3 bundleIdentifier:(id)a4 uniqueIdentifier:(id)a5;
- (id)_calculateUniqueStringRepresentation;
- (id)_initWithArrayPlistRepresentation:(id)a3;
- (id)_initWithDictionaryPlistRepresentation:(id)a3;
- (id)_initWithLegacyPlistRepresentation:(id)a3 sceneIdentifierFromBundleIdentifierGenerator:(id)a4;
- (id)_initWithPlistRepresentation:(id)a3 sceneIdentifierFromBundleIdentifierGenerator:(id)a4;
- (id)_newSceneIdentifierForBundleIdentifier:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)displayItemForFloatingDockSuggestionsComparison;
- (id)plistRepresentation;
- (id)protobufRepresentation;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (int64_t)compare:(id)a3;
- (uint64_t)isEqualToItem:(uint64_t)a1;
- (void)protobufRepresentation;
@end

@implementation SBDisplayItem

- (id)_calculateUniqueStringRepresentation
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(SBDisplayItem *)self uniqueIdentifier];
  v5 = [(SBDisplayItem *)self bundleIdentifier];
  v6 = SBLegacyDisplayItemTypeFromType(self->_type);
  v7 = [v3 stringWithFormat:@"%@-%@-%@", v4, v5, v6];

  return v7;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = SBLegacyDisplayItemTypeFromType(self->_type);
  [v3 appendString:v4 withName:@"type"];

  v5 = [v3 appendObject:self->_bundleIdentifier withName:@"bundleIdentifier"];
  v6 = [v3 appendObject:self->_uniqueIdentifier withName:@"uniqueIdentifier"];

  return v3;
}

+ (id)homeScreenDisplayItem
{
  v2 = FBSystemAppBundleID();
  v3 = [SBDisplayItem displayItemWithType:1 bundleIdentifier:v2 uniqueIdentifier:0];

  return v3;
}

+ (SBDisplayItem)displayItemWithType:(int64_t)a3 bundleIdentifier:(id)a4 uniqueIdentifier:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [[a1 alloc] initWithType:a3 bundleIdentifier:v9 uniqueIdentifier:v8];

  return v10;
}

+ (id)displayItemForLayoutElement:(id)a3
{
  v4 = [a3 workspaceEntity];
  v5 = [a1 displayItemForWorkspaceEntity:v4];

  return v5;
}

+ (id)displayItemForWorkspaceEntity:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    v8 = 0;
    goto LABEL_9;
  }

  if ([v3 isApplicationSceneEntity])
  {
    v5 = [v4 applicationSceneEntity];
    v6 = [v5 sceneHandle];
LABEL_4:
    v7 = v6;
    v8 = [v6 displayItemRepresentation];
LABEL_8:

    goto LABEL_9;
  }

  if ([v4 isAppClipPlaceholderEntity])
  {
    v5 = [v4 appClipPlaceholderEntity];
    v7 = [v5 bundleIdentifier];
    v9 = [v5 futureSceneIdentifier];
    v8 = [SBDisplayItem displayItemWithType:0 bundleIdentifier:v7 uniqueIdentifier:v9];

    goto LABEL_8;
  }

  if ([v4 isDashBoardHostableEntity])
  {
    v5 = [v4 dashBoardHostableEntity];
    v6 = [v5 hostableEntity];
    goto LABEL_4;
  }

  v8 = +[SBDisplayItem homeScreenDisplayItem];
LABEL_9:

  return v8;
}

+ (id)appLibraryDisplayItem
{
  v2 = FBSystemAppBundleID();
  v3 = [SBDisplayItem displayItemWithType:8 bundleIdentifier:v2 uniqueIdentifier:@"AppLibrary"];

  return v3;
}

- (SBDisplayItem)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"SBDisplayItem.m" lineNumber:221 description:@"use initWithType:..."];

  return 0;
}

- (SBDisplayItem)initWithType:(int64_t)a3 bundleIdentifier:(id)a4 uniqueIdentifier:(id)a5
{
  v9 = a4;
  v10 = a5;
  if ((a3 & 0x8000000000000000) == 0)
  {
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_10:
    [SBDisplayItem initWithType:a3 bundleIdentifier:a2 uniqueIdentifier:self];
    if (a3)
    {
      goto LABEL_6;
    }

    goto LABEL_4;
  }

  [(SBDisplayItem *)a3 initWithType:a2 bundleIdentifier:self uniqueIdentifier:v9];
  if (!v9)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (a3)
  {
    goto LABEL_6;
  }

LABEL_4:
  if ([v9 isEqualToString:@"com.apple.webapp"])
  {
    [SBDisplayItem initWithType:a2 bundleIdentifier:self uniqueIdentifier:?];
  }

LABEL_6:
  v20.receiver = self;
  v20.super_class = SBDisplayItem;
  v11 = [(SBDisplayItem *)&v20 init];
  v12 = v11;
  if (v11)
  {
    v11->_type = a3;
    v13 = [v9 copy];
    bundleIdentifier = v12->_bundleIdentifier;
    v12->_bundleIdentifier = v13;

    v15 = [v10 copy];
    uniqueIdentifier = v12->_uniqueIdentifier;
    v12->_uniqueIdentifier = v15;

    v17 = [(SBDisplayItem *)v12 _calculateUniqueStringRepresentation];
    uniqueStringRepresentation = v12->_uniqueStringRepresentation;
    v12->_uniqueStringRepresentation = v17;

    v12->_uniqueStringRepresentationHash = [(NSString *)v12->_uniqueStringRepresentation hash];
  }

  return v12;
}

- (id)_initWithPlistRepresentation:(id)a3 sceneIdentifierFromBundleIdentifierGenerator:(id)a4
{
  v6 = a3;
  v7 = [a4 copy];
  sceneIdentifierFromBundleIdentifierGenerator = self->_sceneIdentifierFromBundleIdentifierGenerator;
  self->_sceneIdentifierFromBundleIdentifierGenerator = v7;

  v9 = objc_opt_class();
  v10 = v6;
  if (v9)
  {
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  if (v12)
  {
    v13 = [(SBDisplayItem *)self _initWithDictionaryPlistRepresentation:v12];
  }

  else
  {
    v14 = objc_opt_class();
    v15 = v10;
    if (v14)
    {
      if (objc_opt_isKindOfClass())
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;

    v13 = [(SBDisplayItem *)self _initWithArrayPlistRepresentation:v17];
  }

  v18 = v13;

  return v18;
}

- (id)_initWithDictionaryPlistRepresentation:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:@"itemType"];
  v6 = [v4 objectForKey:@"bundleID"];
  v7 = [v4 objectForKey:@"uniqueID"];

  v8 = 0;
  if (v5 && v6)
  {
    v9 = SBDisplayItemTypeFromLegacyType(v5);
    if (v9 == 5)
    {
      v10 = [SBWebApplication _webAppIdentifierFromWebClipIdentifier:v7];

      v7 = v10;
    }

    self = [(SBDisplayItem *)self initWithType:v9 bundleIdentifier:v6 uniqueIdentifier:v7];
    v8 = self;
  }

  return v8;
}

- (id)_initWithArrayPlistRepresentation:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 count] >= 2)
  {
    v6 = [v5 objectAtIndexedSubscript:0];
    v7 = objc_opt_class();
    v8 = v6;
    if (v7)
    {
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }

    v12 = v9;

    v15 = [v5 objectAtIndexedSubscript:1];
    v16 = objc_opt_class();
    v17 = v15;
    if (v16)
    {
      if (objc_opt_isKindOfClass())
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }

    v11 = v18;

    if ([v5 count] < 3)
    {
      v10 = 0;
    }

    else
    {
      v19 = [v5 objectAtIndexedSubscript:2];
      v20 = objc_opt_class();
      v21 = v19;
      if (v20)
      {
        if (objc_opt_isKindOfClass())
        {
          v22 = v21;
        }

        else
        {
          v22 = 0;
        }
      }

      else
      {
        v22 = 0;
      }

      v10 = v22;
    }

    v13 = 0;
    if (v12 && v11)
    {
      v23 = SBDisplayItemTypeFromLegacyType(v12);
      v24 = v23;
      if (v23 || v10)
      {
        if (v23 == 5)
        {
          if (v10)
          {
            v25 = [SBWebApplication _webAppIdentifierFromWebClipIdentifier:v10];

            v10 = v25;
          }

          else
          {
            v10 = [SBWebApplication _webAppIdentifierFromWebClipIdentifier:v11];
            v26 = @"com.apple.webapp";

            v11 = v26;
          }
        }
      }

      else
      {
        v10 = [(SBDisplayItem *)self _newSceneIdentifierForBundleIdentifier:v11];
      }

      self = [(SBDisplayItem *)self initWithType:v24 bundleIdentifier:v11 uniqueIdentifier:v10];
      v13 = self;
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
  }

  return v13;
}

- (id)_initWithLegacyPlistRepresentation:(id)a3 sceneIdentifierFromBundleIdentifierGenerator:(id)a4
{
  v6 = a3;
  v7 = [a4 copy];
  sceneIdentifierFromBundleIdentifierGenerator = self->_sceneIdentifierFromBundleIdentifierGenerator;
  self->_sceneIdentifierFromBundleIdentifierGenerator = v7;

  v9 = objc_opt_class();
  v10 = SBSafeCast(v9, v6);

  if (v10 && [v10 count] == 2)
  {
    v11 = [v10 objectAtIndexedSubscript:0];
    v12 = SBDisplayItemTypeFromLegacyType(v11);
    v13 = [v10 objectAtIndexedSubscript:1];
    v14 = v13;
    if (v12 == 5)
    {
      v15 = @"com.apple.webapp";
      v17 = [SBWebApplication _webAppIdentifierFromWebClipIdentifier:v14];
    }

    else
    {
      v15 = 0;
      v16 = 0;
      if (v12)
      {
LABEL_9:
        self = [(SBDisplayItem *)self initWithType:v12 bundleIdentifier:v15 uniqueIdentifier:v16];

        v18 = self;
        goto LABEL_10;
      }

      v15 = v13;
      v17 = [(SBDisplayItem *)self _newSceneIdentifierForBundleIdentifier:v15];
    }

    v16 = v17;
    goto LABEL_9;
  }

  v18 = 0;
LABEL_10:

  return v18;
}

- (id)_newSceneIdentifierForBundleIdentifier:(id)a3
{
  sceneIdentifierFromBundleIdentifierGenerator = self->_sceneIdentifierFromBundleIdentifierGenerator;
  if (sceneIdentifierFromBundleIdentifierGenerator)
  {
    v4 = sceneIdentifierFromBundleIdentifierGenerator[2];
    v5 = a3;
    v6 = v4(sceneIdentifierFromBundleIdentifierGenerator, v5);
  }

  else
  {
    v7 = a3;
    v5 = +[SBSceneManagerCoordinator mainDisplaySceneManager];
    v6 = [v5 newSceneIdentifierForBundleIdentifier:v7];
  }

  return v6;
}

- (NSString)webClipIdentifier
{
  if ([(SBDisplayItem *)self type]== 5)
  {
    v3 = [(SBDisplayItem *)self uniqueIdentifier];
    v4 = [SBWebApplication _webClipIdentifierFromWebAppIdentifier:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)plistRepresentation
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = [(SBDisplayItem *)self type];
  v4 = MEMORY[0x277CBEB38];
  v11[0] = @"itemType";
  v5 = SBLegacyDisplayItemTypeFromType(v3);
  v11[1] = @"bundleID";
  v12[0] = v5;
  v6 = [(SBDisplayItem *)self bundleIdentifier];
  v12[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v8 = [v4 dictionaryWithDictionary:v7];

  if (v3 == 5)
  {
    [(SBDisplayItem *)self webClipIdentifier];
  }

  else
  {
    [(SBDisplayItem *)self uniqueIdentifier];
  }
  v9 = ;
  if (v9)
  {
    [v8 setObject:v9 forKey:@"uniqueID"];
  }

  return v8;
}

+ (SBDisplayItem)displayItemWithProtobufRepresentation:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    v9 = 0;
    goto LABEL_19;
  }

  v5 = [(SBPBDisplayItem *)v3 type];
  if (v5 <= 2)
  {
    v10 = 2;
    if (v5 != 2)
    {
      v10 = 0;
    }

    if (v5 == 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v10;
    }
  }

  else
  {
    switch(v5)
    {
      case 3:
        v11 = 3;
        break;
      case 4:
        v11 = 4;
        break;
      case 5:
        v6 = [(SBPBDisplayItem *)v4 bundleIdentifier];
        v7 = [(SBPBDisplayItem *)v4 webClipIdentifier];
        if (v7)
        {
          v8 = [SBWebApplication _webAppIdentifierFromWebClipIdentifier:v7];
        }

        else
        {
          v8 = 0;
        }

        v11 = 5;
        goto LABEL_18;
      default:
        v11 = 0;
        break;
    }
  }

  v6 = [(SBPBDisplayItem *)v4 bundleIdentifier];
  v8 = [(SBPBDisplayItem *)v4 sceneIdentifier];
LABEL_18:
  v9 = [SBDisplayItem displayItemWithType:v11 bundleIdentifier:v6 uniqueIdentifier:v8];

LABEL_19:

  return v9;
}

- (id)protobufRepresentation
{
  v4 = objc_alloc_init(SBPBDisplayItem);
  v5 = [(SBDisplayItem *)self type];
  v6 = protobufDisplayItemTypeFromType(v5);
  [(SBPBDisplayItem *)v4 setType:v6];
  v7 = [(SBDisplayItem *)self bundleIdentifier];
  [(SBPBDisplayItem *)v4 setBundleIdentifier:v7];

  if (v5 == 5)
  {
    v8 = [(SBDisplayItem *)self webClipIdentifier];

    if (!v8)
    {
      [(SBDisplayItem *)a2 protobufRepresentation];
    }

    v9 = [(SBDisplayItem *)self webClipIdentifier];
    [(SBPBDisplayItem *)v4 setWebClipIdentifier:v9];
  }

  else
  {
    v9 = [(SBDisplayItem *)self uniqueIdentifier];
    [(SBPBDisplayItem *)v4 setSceneIdentifier:v9];
  }

  return v4;
}

- (BOOL)isHomeScreenDisplayItem
{
  if ([(SBDisplayItem *)self type]!= 1)
  {
    return 0;
  }

  v3 = [(SBDisplayItem *)self bundleIdentifier];
  v4 = FBSystemAppBundleID();
  v5 = [v3 isEqual:v4];

  return v5;
}

- (uint64_t)isEqualToItem:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (a1 && v3)
  {
    if (*(a1 + 40) == *(v3 + 5))
    {
      v5 = [*(a1 + 8) isEqualToString:*(v3 + 1)];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = objc_opt_self();
  v6 = SBSafeCast(v5, v4);

  if (v6)
  {
    v7 = [(SBDisplayItem *)self uniqueIdentifier];
    v8 = [v6 uniqueIdentifier];
    v9 = [v7 compare:v8];

    if (!v9)
    {
      v10 = [(SBDisplayItem *)self type];
      if (v10 <= [v6 type])
      {
        v11 = [(SBDisplayItem *)self type];
        if (v11 >= [v6 type])
        {
          v9 = 0;
        }

        else
        {
          v9 = -1;
        }
      }

      else
      {
        v9 = 1;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)succinctDescription
{
  v2 = [(SBDisplayItem *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBDisplayItem *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)displayItemForFloatingDockSuggestionsComparison
{
  v3 = [(SBDisplayItem *)self bundleIdentifier];
  v4 = [(SBDisplayItem *)self type];
  if (v4 > 8)
  {
    v6 = 0;
  }

  else
  {
    if (((1 << v4) & 0x1EE) != 0)
    {
      v5 = self;
    }

    else
    {
      v5 = [objc_opt_class() displayItemWithType:0 bundleIdentifier:v3 uniqueIdentifier:0];
    }

    v6 = v5;
  }

  return v6;
}

- (BOOL)isEqualToDisplayItemForFloatingDockSuggestions:(id)a3
{
  v4 = a3;
  if (([(SBDisplayItem *)self isEqualToItem:v4]& 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    v6 = [(SBDisplayItem *)self type];
    if (v6 == [v4 type])
    {
      v7 = [(SBDisplayItem *)self bundleIdentifier];
      v8 = [v4 bundleIdentifier];
      v9 = BSEqualObjects();
      v10 = 0x11u >> v6;
      if (v6 > 8)
      {
        LOBYTE(v10) = 0;
      }

      if (v9)
      {
        v5 = v10;
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  return v5 & 1;
}

- (void)initWithType:(uint64_t)a3 bundleIdentifier:(uint64_t)a4 uniqueIdentifier:.cold.1(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = [MEMORY[0x277CCA890] currentHandler];
  v8 = SBLegacyDisplayItemTypeFromType(a1);
  [v9 handleFailureInMethod:a2 object:a3 file:@"SBDisplayItem.m" lineNumber:226 description:{@"Must have type & identifier %@, %@", v8, a4}];
}

- (void)initWithType:(unint64_t)a1 bundleIdentifier:(uint64_t)a2 uniqueIdentifier:(uint64_t)a3 .cold.2(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v6 = SBLegacyDisplayItemTypeFromType(a1);
  [v7 handleFailureInMethod:a2 object:a3 file:@"SBDisplayItem.m" lineNumber:227 description:{@"Must have type & identifier %@, %@", v6, 0}];
}

- (void)initWithType:(uint64_t)a1 bundleIdentifier:(uint64_t)a2 uniqueIdentifier:.cold.3(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBDisplayItem.m" lineNumber:228 description:@"Web App Bundle ID must be accompanied by SBDisplayItemTypeWebApp type"];
}

- (void)protobufRepresentation
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBDisplayItem.m" lineNumber:392 description:@"Malformed display item"];
}

@end