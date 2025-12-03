@interface SBDisplayItem
+ (SBDisplayItem)displayItemWithProtobufRepresentation:(id)representation;
+ (SBDisplayItem)displayItemWithType:(int64_t)type bundleIdentifier:(id)identifier uniqueIdentifier:(id)uniqueIdentifier;
+ (id)appLibraryDisplayItem;
+ (id)displayItemForLayoutElement:(id)element;
+ (id)displayItemForWorkspaceEntity:(id)entity;
+ (id)homeScreenDisplayItem;
- (BOOL)isEqualToDisplayItemForFloatingDockSuggestions:(id)suggestions;
- (BOOL)isHomeScreenDisplayItem;
- (NSString)webClipIdentifier;
- (SBDisplayItem)init;
- (SBDisplayItem)initWithType:(int64_t)type bundleIdentifier:(id)identifier uniqueIdentifier:(id)uniqueIdentifier;
- (id)_calculateUniqueStringRepresentation;
- (id)_initWithArrayPlistRepresentation:(id)representation;
- (id)_initWithDictionaryPlistRepresentation:(id)representation;
- (id)_initWithLegacyPlistRepresentation:(id)representation sceneIdentifierFromBundleIdentifierGenerator:(id)generator;
- (id)_initWithPlistRepresentation:(id)representation sceneIdentifierFromBundleIdentifierGenerator:(id)generator;
- (id)_newSceneIdentifierForBundleIdentifier:(id)identifier;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)displayItemForFloatingDockSuggestionsComparison;
- (id)plistRepresentation;
- (id)protobufRepresentation;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (int64_t)compare:(id)compare;
- (uint64_t)isEqualToItem:(uint64_t)item;
- (void)protobufRepresentation;
@end

@implementation SBDisplayItem

- (id)_calculateUniqueStringRepresentation
{
  v3 = MEMORY[0x277CCACA8];
  uniqueIdentifier = [(SBDisplayItem *)self uniqueIdentifier];
  bundleIdentifier = [(SBDisplayItem *)self bundleIdentifier];
  v6 = SBLegacyDisplayItemTypeFromType(self->_type);
  v7 = [v3 stringWithFormat:@"%@-%@-%@", uniqueIdentifier, bundleIdentifier, v6];

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

+ (SBDisplayItem)displayItemWithType:(int64_t)type bundleIdentifier:(id)identifier uniqueIdentifier:(id)uniqueIdentifier
{
  uniqueIdentifierCopy = uniqueIdentifier;
  identifierCopy = identifier;
  v10 = [[self alloc] initWithType:type bundleIdentifier:identifierCopy uniqueIdentifier:uniqueIdentifierCopy];

  return v10;
}

+ (id)displayItemForLayoutElement:(id)element
{
  workspaceEntity = [element workspaceEntity];
  v5 = [self displayItemForWorkspaceEntity:workspaceEntity];

  return v5;
}

+ (id)displayItemForWorkspaceEntity:(id)entity
{
  entityCopy = entity;
  v4 = entityCopy;
  if (!entityCopy)
  {
    displayItemRepresentation = 0;
    goto LABEL_9;
  }

  if ([entityCopy isApplicationSceneEntity])
  {
    applicationSceneEntity = [v4 applicationSceneEntity];
    sceneHandle = [applicationSceneEntity sceneHandle];
LABEL_4:
    bundleIdentifier = sceneHandle;
    displayItemRepresentation = [sceneHandle displayItemRepresentation];
LABEL_8:

    goto LABEL_9;
  }

  if ([v4 isAppClipPlaceholderEntity])
  {
    applicationSceneEntity = [v4 appClipPlaceholderEntity];
    bundleIdentifier = [applicationSceneEntity bundleIdentifier];
    futureSceneIdentifier = [applicationSceneEntity futureSceneIdentifier];
    displayItemRepresentation = [SBDisplayItem displayItemWithType:0 bundleIdentifier:bundleIdentifier uniqueIdentifier:futureSceneIdentifier];

    goto LABEL_8;
  }

  if ([v4 isDashBoardHostableEntity])
  {
    applicationSceneEntity = [v4 dashBoardHostableEntity];
    sceneHandle = [applicationSceneEntity hostableEntity];
    goto LABEL_4;
  }

  displayItemRepresentation = +[SBDisplayItem homeScreenDisplayItem];
LABEL_9:

  return displayItemRepresentation;
}

+ (id)appLibraryDisplayItem
{
  v2 = FBSystemAppBundleID();
  v3 = [SBDisplayItem displayItemWithType:8 bundleIdentifier:v2 uniqueIdentifier:@"AppLibrary"];

  return v3;
}

- (SBDisplayItem)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBDisplayItem.m" lineNumber:221 description:@"use initWithType:..."];

  return 0;
}

- (SBDisplayItem)initWithType:(int64_t)type bundleIdentifier:(id)identifier uniqueIdentifier:(id)uniqueIdentifier
{
  identifierCopy = identifier;
  uniqueIdentifierCopy = uniqueIdentifier;
  if ((type & 0x8000000000000000) == 0)
  {
    if (identifierCopy)
    {
      goto LABEL_3;
    }

LABEL_10:
    [SBDisplayItem initWithType:type bundleIdentifier:a2 uniqueIdentifier:self];
    if (type)
    {
      goto LABEL_6;
    }

    goto LABEL_4;
  }

  [(SBDisplayItem *)type initWithType:a2 bundleIdentifier:self uniqueIdentifier:identifierCopy];
  if (!identifierCopy)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (type)
  {
    goto LABEL_6;
  }

LABEL_4:
  if ([identifierCopy isEqualToString:@"com.apple.webapp"])
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
    v11->_type = type;
    v13 = [identifierCopy copy];
    bundleIdentifier = v12->_bundleIdentifier;
    v12->_bundleIdentifier = v13;

    v15 = [uniqueIdentifierCopy copy];
    uniqueIdentifier = v12->_uniqueIdentifier;
    v12->_uniqueIdentifier = v15;

    _calculateUniqueStringRepresentation = [(SBDisplayItem *)v12 _calculateUniqueStringRepresentation];
    uniqueStringRepresentation = v12->_uniqueStringRepresentation;
    v12->_uniqueStringRepresentation = _calculateUniqueStringRepresentation;

    v12->_uniqueStringRepresentationHash = [(NSString *)v12->_uniqueStringRepresentation hash];
  }

  return v12;
}

- (id)_initWithPlistRepresentation:(id)representation sceneIdentifierFromBundleIdentifierGenerator:(id)generator
{
  representationCopy = representation;
  v7 = [generator copy];
  sceneIdentifierFromBundleIdentifierGenerator = self->_sceneIdentifierFromBundleIdentifierGenerator;
  self->_sceneIdentifierFromBundleIdentifierGenerator = v7;

  v9 = objc_opt_class();
  v10 = representationCopy;
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

- (id)_initWithDictionaryPlistRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = [representationCopy objectForKey:@"itemType"];
  v6 = [representationCopy objectForKey:@"bundleID"];
  v7 = [representationCopy objectForKey:@"uniqueID"];

  selfCopy = 0;
  if (v5 && v6)
  {
    v9 = SBDisplayItemTypeFromLegacyType(v5);
    if (v9 == 5)
    {
      v10 = [SBWebApplication _webAppIdentifierFromWebClipIdentifier:v7];

      v7 = v10;
    }

    self = [(SBDisplayItem *)self initWithType:v9 bundleIdentifier:v6 uniqueIdentifier:v7];
    selfCopy = self;
  }

  return selfCopy;
}

- (id)_initWithArrayPlistRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = representationCopy;
  if (representationCopy && [representationCopy count] >= 2)
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

    selfCopy = 0;
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
      selfCopy = self;
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)_initWithLegacyPlistRepresentation:(id)representation sceneIdentifierFromBundleIdentifierGenerator:(id)generator
{
  representationCopy = representation;
  v7 = [generator copy];
  sceneIdentifierFromBundleIdentifierGenerator = self->_sceneIdentifierFromBundleIdentifierGenerator;
  self->_sceneIdentifierFromBundleIdentifierGenerator = v7;

  v9 = objc_opt_class();
  v10 = SBSafeCast(v9, representationCopy);

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

        selfCopy = self;
        goto LABEL_10;
      }

      v15 = v13;
      v17 = [(SBDisplayItem *)self _newSceneIdentifierForBundleIdentifier:v15];
    }

    v16 = v17;
    goto LABEL_9;
  }

  selfCopy = 0;
LABEL_10:

  return selfCopy;
}

- (id)_newSceneIdentifierForBundleIdentifier:(id)identifier
{
  sceneIdentifierFromBundleIdentifierGenerator = self->_sceneIdentifierFromBundleIdentifierGenerator;
  if (sceneIdentifierFromBundleIdentifierGenerator)
  {
    v4 = sceneIdentifierFromBundleIdentifierGenerator[2];
    identifierCopy = identifier;
    v6 = v4(sceneIdentifierFromBundleIdentifierGenerator, identifierCopy);
  }

  else
  {
    identifierCopy2 = identifier;
    identifierCopy = +[SBSceneManagerCoordinator mainDisplaySceneManager];
    v6 = [identifierCopy newSceneIdentifierForBundleIdentifier:identifierCopy2];
  }

  return v6;
}

- (NSString)webClipIdentifier
{
  if ([(SBDisplayItem *)self type]== 5)
  {
    uniqueIdentifier = [(SBDisplayItem *)self uniqueIdentifier];
    v4 = [SBWebApplication _webClipIdentifierFromWebAppIdentifier:uniqueIdentifier];
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
  type = [(SBDisplayItem *)self type];
  v4 = MEMORY[0x277CBEB38];
  v11[0] = @"itemType";
  v5 = SBLegacyDisplayItemTypeFromType(type);
  v11[1] = @"bundleID";
  v12[0] = v5;
  bundleIdentifier = [(SBDisplayItem *)self bundleIdentifier];
  v12[1] = bundleIdentifier;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v8 = [v4 dictionaryWithDictionary:v7];

  if (type == 5)
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

+ (SBDisplayItem)displayItemWithProtobufRepresentation:(id)representation
{
  representationCopy = representation;
  v4 = representationCopy;
  if (!representationCopy)
  {
    v9 = 0;
    goto LABEL_19;
  }

  type = [(SBPBDisplayItem *)representationCopy type];
  if (type <= 2)
  {
    v10 = 2;
    if (type != 2)
    {
      v10 = 0;
    }

    if (type == 1)
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
    switch(type)
    {
      case 3:
        v11 = 3;
        break;
      case 4:
        v11 = 4;
        break;
      case 5:
        bundleIdentifier = [(SBPBDisplayItem *)v4 bundleIdentifier];
        webClipIdentifier = [(SBPBDisplayItem *)v4 webClipIdentifier];
        if (webClipIdentifier)
        {
          sceneIdentifier = [SBWebApplication _webAppIdentifierFromWebClipIdentifier:webClipIdentifier];
        }

        else
        {
          sceneIdentifier = 0;
        }

        v11 = 5;
        goto LABEL_18;
      default:
        v11 = 0;
        break;
    }
  }

  bundleIdentifier = [(SBPBDisplayItem *)v4 bundleIdentifier];
  sceneIdentifier = [(SBPBDisplayItem *)v4 sceneIdentifier];
LABEL_18:
  v9 = [SBDisplayItem displayItemWithType:v11 bundleIdentifier:bundleIdentifier uniqueIdentifier:sceneIdentifier];

LABEL_19:

  return v9;
}

- (id)protobufRepresentation
{
  v4 = objc_alloc_init(SBPBDisplayItem);
  type = [(SBDisplayItem *)self type];
  v6 = protobufDisplayItemTypeFromType(type);
  [(SBPBDisplayItem *)v4 setType:v6];
  bundleIdentifier = [(SBDisplayItem *)self bundleIdentifier];
  [(SBPBDisplayItem *)v4 setBundleIdentifier:bundleIdentifier];

  if (type == 5)
  {
    webClipIdentifier = [(SBDisplayItem *)self webClipIdentifier];

    if (!webClipIdentifier)
    {
      [(SBDisplayItem *)a2 protobufRepresentation];
    }

    webClipIdentifier2 = [(SBDisplayItem *)self webClipIdentifier];
    [(SBPBDisplayItem *)v4 setWebClipIdentifier:webClipIdentifier2];
  }

  else
  {
    webClipIdentifier2 = [(SBDisplayItem *)self uniqueIdentifier];
    [(SBPBDisplayItem *)v4 setSceneIdentifier:webClipIdentifier2];
  }

  return v4;
}

- (BOOL)isHomeScreenDisplayItem
{
  if ([(SBDisplayItem *)self type]!= 1)
  {
    return 0;
  }

  bundleIdentifier = [(SBDisplayItem *)self bundleIdentifier];
  v4 = FBSystemAppBundleID();
  v5 = [bundleIdentifier isEqual:v4];

  return v5;
}

- (uint64_t)isEqualToItem:(uint64_t)item
{
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (item && v3)
  {
    if (*(item + 40) == *(v3 + 5))
    {
      v5 = [*(item + 8) isEqualToString:*(v3 + 1)];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  v5 = objc_opt_self();
  v6 = SBSafeCast(v5, compareCopy);

  if (v6)
  {
    uniqueIdentifier = [(SBDisplayItem *)self uniqueIdentifier];
    uniqueIdentifier2 = [v6 uniqueIdentifier];
    v9 = [uniqueIdentifier compare:uniqueIdentifier2];

    if (!v9)
    {
      type = [(SBDisplayItem *)self type];
      if (type <= [v6 type])
      {
        type2 = [(SBDisplayItem *)self type];
        if (type2 >= [v6 type])
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
  succinctDescriptionBuilder = [(SBDisplayItem *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBDisplayItem *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)displayItemForFloatingDockSuggestionsComparison
{
  bundleIdentifier = [(SBDisplayItem *)self bundleIdentifier];
  type = [(SBDisplayItem *)self type];
  if (type > 8)
  {
    v6 = 0;
  }

  else
  {
    if (((1 << type) & 0x1EE) != 0)
    {
      selfCopy = self;
    }

    else
    {
      selfCopy = [objc_opt_class() displayItemWithType:0 bundleIdentifier:bundleIdentifier uniqueIdentifier:0];
    }

    v6 = selfCopy;
  }

  return v6;
}

- (BOOL)isEqualToDisplayItemForFloatingDockSuggestions:(id)suggestions
{
  suggestionsCopy = suggestions;
  if (([(SBDisplayItem *)self isEqualToItem:suggestionsCopy]& 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    type = [(SBDisplayItem *)self type];
    if (type == [suggestionsCopy type])
    {
      bundleIdentifier = [(SBDisplayItem *)self bundleIdentifier];
      bundleIdentifier2 = [suggestionsCopy bundleIdentifier];
      v9 = BSEqualObjects();
      v10 = 0x11u >> type;
      if (type > 8)
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
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"SBDisplayItem.m" lineNumber:392 description:@"Malformed display item"];
}

@end