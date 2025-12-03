@interface UIAirDropNode
+ (UIAirDropNode)nodeWithIdentifier:(id)identifier displayName:(id)name subtitle:(id)subtitle avatarImageSlotID:(unsigned int)d transportImageSlotID:(unsigned int)iD;
+ (UIAirDropNode)nodeWithIdentifier:(id)identifier peopleSuggestion:(id)suggestion;
+ (UIAirDropNode)nodeWithIdentifier:(id)identifier suggestionNode:(id)node;
+ (id)TTRAirDropNode;
- (BOOL)isEqual:(id)equal;
- (BOOL)isTapToRadar;
- (BOOL)load;
- (NSString)description;
- (UIAirDropNode)initWithCoder:(id)coder;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)load;
@end

@implementation UIAirDropNode

+ (UIAirDropNode)nodeWithIdentifier:(id)identifier suggestionNode:(id)node
{
  nodeCopy = node;
  identifierCopy = identifier;
  v7 = objc_alloc_init(UIAirDropNode);
  [(UIAirDropNode *)v7 setIdentifier:identifierCopy];

  [(UIAirDropNode *)v7 setSuggestionNode:nodeCopy];
  suggestion = [nodeCopy suggestion];

  -[UIAirDropNode setIsPlaceholder:](v7, "setIsPlaceholder:", [suggestion isPlaceholder]);

  return v7;
}

+ (UIAirDropNode)nodeWithIdentifier:(id)identifier displayName:(id)name subtitle:(id)subtitle avatarImageSlotID:(unsigned int)d transportImageSlotID:(unsigned int)iD
{
  v7 = *&iD;
  v8 = *&d;
  subtitleCopy = subtitle;
  nameCopy = name;
  identifierCopy = identifier;
  v14 = objc_alloc_init(UIAirDropNode);
  [(UIAirDropNode *)v14 setIdentifier:identifierCopy];

  [(UIAirDropNode *)v14 setDisplayName:nameCopy];
  [(UIAirDropNode *)v14 setSubtitle:subtitleCopy];

  [(UIAirDropNode *)v14 setAvatarImageSlotID:v8];
  [(UIAirDropNode *)v14 setTransportImageSlotID:v7];
  -[UIAirDropNode setMainLabelSlotID:](v14, "setMainLabelSlotID:", [nameCopy slotIdentifier]);
  [nameCopy slotTextHeight];
  v16 = v15;

  [(UIAirDropNode *)v14 setMainLabelSlotHeight:v16];

  return v14;
}

+ (UIAirDropNode)nodeWithIdentifier:(id)identifier peopleSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  identifierCopy = identifier;
  v7 = objc_alloc_init(UIAirDropNode);
  [(UIAirDropNode *)v7 setIdentifier:identifierCopy];

  [(UIAirDropNode *)v7 setPeopleSuggestion:suggestionCopy];

  return v7;
}

+ (id)TTRAirDropNode
{
  v2 = objc_alloc_init(UIAirDropNode);
  tTRPeopleSuggestion = [MEMORY[0x1E69CDEA8] TTRPeopleSuggestion];
  v4 = objc_alloc(MEMORY[0x1E696AFB0]);
  identifier = [tTRPeopleSuggestion identifier];
  v6 = [v4 initWithUUIDString:identifier];
  [(UIAirDropNode *)v2 setIdentifier:v6];

  v7 = objc_alloc(MEMORY[0x1E69CDEB0]);
  displayName = [tTRPeopleSuggestion displayName];
  v9 = [v7 initWithText:displayName];
  [(UIAirDropNode *)v2 setDisplayName:v9];

  [(UIAirDropNode *)v2 setPeopleSuggestion:tTRPeopleSuggestion];

  return v2;
}

- (BOOL)isTapToRadar
{
  peopleSuggestion = [(UIAirDropNode *)self peopleSuggestion];
  isTapToRadar = [peopleSuggestion isTapToRadar];

  return isTapToRadar;
}

- (UIAirDropNode)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(UIAirDropNode *)self init];
  if (v5)
  {
    -[UIAirDropNode setAvatarImageSlotID:](v5, "setAvatarImageSlotID:", [coderCopy decodeInt32ForKey:@"avatarImageSlotID"]);
    -[UIAirDropNode setTransportImageSlotID:](v5, "setTransportImageSlotID:", [coderCopy decodeInt32ForKey:@"transportImageSlotID"]);
    -[UIAirDropNode setMainLabelSlotID:](v5, "setMainLabelSlotID:", [coderCopy decodeInt32ForKey:@"mainLabelSlotID"]);
    [coderCopy decodeDoubleForKey:@"mainLabelSlotHeight"];
    [(UIAirDropNode *)v5 setMainLabelSlotHeight:?];
    -[UIAirDropNode setBottomLabelSlotID:](v5, "setBottomLabelSlotID:", [coderCopy decodeInt32ForKey:@"bottomLabelSlotID"]);
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"suggestionNodeReason"];
    [(UIAirDropNode *)v5 setSuggestionReason:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
    displayName = v5->_displayName;
    v5->_displayName = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subtitle"];
    subtitle = v5->_subtitle;
    v5->_subtitle = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v11;

    v5->_isMagicHead = [coderCopy decodeBoolForKey:@"isMagicHead"];
    v5->_selectionReason = [coderCopy decodeInt64ForKey:@"selectionReason"];
    v5->_hasSquareImage = [coderCopy decodeBoolForKey:@"hasSquareImage"];
    v5->_isDisabled = [coderCopy decodeBoolForKey:@"isDisabled"];
    v5->_isRestricted = [coderCopy decodeBoolForKey:@"isRestricted"];
    v5->_isPlaceholder = [coderCopy decodeBoolForKey:@"isPlaceholder"];
    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"peopleSuggestion"];
    peopleSuggestion = v5->_peopleSuggestion;
    v5->_peopleSuggestion = v13;

    if ([(UIAirDropNode *)v5 mainLabelSlotID])
    {
      displayName = [(UIAirDropNode *)v5 displayName];
      slotIdentifier = [displayName slotIdentifier];

      if (!slotIdentifier)
      {
        v17 = objc_alloc(MEMORY[0x1E69CDEB0]);
        mainLabelSlotID = [(UIAirDropNode *)v5 mainLabelSlotID];
        [(UIAirDropNode *)v5 mainLabelSlotHeight];
        v19 = [v17 initWithSlotIdentifier:mainLabelSlotID slotTextHeight:?];
        [(UIAirDropNode *)v5 setDisplayName:v19];
      }
    }

    if ([(UIAirDropNode *)v5 bottomLabelSlotID])
    {
      subtitle = [(UIAirDropNode *)v5 subtitle];
      slotIdentifier2 = [subtitle slotIdentifier];

      if (!slotIdentifier2)
      {
        v22 = [objc_alloc(MEMORY[0x1E69CDEB0]) initWithSlotIdentifier:{-[UIAirDropNode bottomLabelSlotID](v5, "bottomLabelSlotID")}];
        [(UIAirDropNode *)v5 setSubtitle:v22];
      }
    }

    if ([(UIAirDropNode *)v5 isRestricted])
    {
      v23 = share_sheet_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        [(UIAirDropNode *)v5 initWithCoder:v23];
      }

      v5 = 0;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt32:-[UIAirDropNode avatarImageSlotID](self forKey:{"avatarImageSlotID"), @"avatarImageSlotID"}];
  [coderCopy encodeInt32:-[UIAirDropNode transportImageSlotID](self forKey:{"transportImageSlotID"), @"transportImageSlotID"}];
  [coderCopy encodeInt32:-[UIAirDropNode mainLabelSlotID](self forKey:{"mainLabelSlotID"), @"mainLabelSlotID"}];
  [(UIAirDropNode *)self mainLabelSlotHeight];
  [coderCopy encodeDouble:@"mainLabelSlotHeight" forKey:?];
  [coderCopy encodeInt32:-[UIAirDropNode bottomLabelSlotID](self forKey:{"bottomLabelSlotID"), @"bottomLabelSlotID"}];
  suggestionNode = [(UIAirDropNode *)self suggestionNode];
  suggestionReason = [suggestionNode suggestionReason];
  [coderCopy encodeObject:suggestionReason forKey:@"suggestionNodeReason"];

  [coderCopy encodeObject:self->_displayName forKey:@"displayName"];
  [coderCopy encodeObject:self->_subtitle forKey:@"subtitle"];
  [coderCopy encodeObject:self->_identifier forKey:@"identifier"];
  [coderCopy encodeBool:self->_isMagicHead forKey:@"isMagicHead"];
  [coderCopy encodeInt64:self->_selectionReason forKey:@"selectionReason"];
  [coderCopy encodeBool:self->_hasSquareImage forKey:@"hasSquareImage"];
  [coderCopy encodeBool:self->_isDisabled forKey:@"isDisabled"];
  [coderCopy encodeBool:self->_isRestricted forKey:@"isRestricted"];
  [coderCopy encodeBool:self->_isPlaceholder forKey:@"isPlaceholder"];
  [coderCopy encodeObject:self->_peopleSuggestion forKey:@"peopleSuggestion"];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v18.receiver = self;
  v18.super_class = UIAirDropNode;
  v4 = [(UIAirDropNode *)&v18 description];
  identifier = [(UIAirDropNode *)self identifier];
  avatarImageSlotID = [(UIAirDropNode *)self avatarImageSlotID];
  transportImageSlotID = [(UIAirDropNode *)self transportImageSlotID];
  mainLabelSlotID = [(UIAirDropNode *)self mainLabelSlotID];
  [(UIAirDropNode *)self mainLabelSlotHeight];
  if (self->_isDisabled)
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  if (self->_isRestricted)
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  if (self->_isPlaceholder)
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  v13 = [v3 stringWithFormat:@"<%@: identifier:%@ avatarImageSlotID:%u, transportImageSlotID:%u, textSlotID:%u, textSlotHeight:%f, peopleSuggestion:%@, isDisabled:%@, isRestricted:%@ displayName:%@ subtitle:%@ isPlaceholder:%@", v4, identifier, avatarImageSlotID, transportImageSlotID, mainLabelSlotID, v9, self->_peopleSuggestion, v10, v11, self->_displayName, self->_subtitle, v12];

  if (self->_isMagicHead)
  {
    v14 = @"YES";
  }

  else
  {
    v14 = @"NO";
  }

  v15 = [v13 stringByAppendingFormat:@", isMagicHead:%@, selectionReason:%ld", v14, self->_selectionReason];

  v16 = [v15 stringByAppendingFormat:@">"];

  return v16;
}

- (unint64_t)hash
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v4 hash];

  identifier = [(UIAirDropNode *)self identifier];
  v7 = [identifier hash];

  return v7 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v19 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      avatarImageSlotID = [(UIAirDropNode *)v5 avatarImageSlotID];
      if (avatarImageSlotID != [(UIAirDropNode *)self avatarImageSlotID]|| (v7 = [(UIAirDropNode *)v5 mainLabelSlotID], v7 != [(UIAirDropNode *)self mainLabelSlotID]) || ([(UIAirDropNode *)v5 mainLabelSlotHeight], v9 = v8, [(UIAirDropNode *)self mainLabelSlotHeight], v9 != v10) || (v11 = [(UIAirDropNode *)v5 bottomLabelSlotID], v11 != [(UIAirDropNode *)self bottomLabelSlotID]) || (v12 = [(UIAirDropNode *)v5 transportImageSlotID], v12 != [(UIAirDropNode *)self transportImageSlotID]))
      {
        v19 = 0;
LABEL_15:

        goto LABEL_16;
      }

      identifier = [(UIAirDropNode *)v5 identifier];
      identifier2 = [(UIAirDropNode *)self identifier];
      v15 = identifier;
      v16 = identifier2;
      v17 = v16;
      if (v15 == v16)
      {
      }

      else
      {
        if ((v15 != 0) == (v16 == 0))
        {
          v19 = 0;
          v27 = v16;
          v28 = v15;
LABEL_26:

          goto LABEL_27;
        }

        v18 = [v15 isEqual:v16];

        if (!v18)
        {
LABEL_24:
          v19 = 0;
LABEL_27:

          goto LABEL_15;
        }
      }

      isMagicHead = [(UIAirDropNode *)v5 isMagicHead];
      if (isMagicHead != [(UIAirDropNode *)self isMagicHead])
      {
        goto LABEL_24;
      }

      selectionReason = [(UIAirDropNode *)v5 selectionReason];
      if (selectionReason != [(UIAirDropNode *)self selectionReason])
      {
        goto LABEL_24;
      }

      hasSquareImage = [(UIAirDropNode *)v5 hasSquareImage];
      if (hasSquareImage != [(UIAirDropNode *)self hasSquareImage])
      {
        goto LABEL_24;
      }

      isDisabled = [(UIAirDropNode *)v5 isDisabled];
      if (isDisabled != [(UIAirDropNode *)self isDisabled])
      {
        goto LABEL_24;
      }

      isRestricted = [(UIAirDropNode *)v5 isRestricted];
      if (isRestricted != [(UIAirDropNode *)self isRestricted])
      {
        goto LABEL_24;
      }

      isPlaceholder = [(UIAirDropNode *)v5 isPlaceholder];
      if (isPlaceholder != [(UIAirDropNode *)self isPlaceholder])
      {
        goto LABEL_24;
      }

      peopleSuggestion = [(UIAirDropNode *)v5 peopleSuggestion];
      peopleSuggestion2 = [(UIAirDropNode *)self peopleSuggestion];
      v28 = peopleSuggestion;
      v31 = peopleSuggestion2;
      v32 = v31;
      v44 = v31;
      if (v28 == v31)
      {
      }

      else
      {
        if ((v28 != 0) == (v31 == 0))
        {
          v19 = 0;
          v36 = v28;
          goto LABEL_47;
        }

        v33 = [v28 isEqual:v31];

        if (!v33)
        {
          v19 = 0;
LABEL_48:
          v27 = v44;
          goto LABEL_26;
        }
      }

      displayName = [(UIAirDropNode *)v5 displayName];
      displayName2 = [(UIAirDropNode *)self displayName];
      v36 = displayName;
      v37 = displayName2;
      v32 = v37;
      if (v36 == v37)
      {
      }

      else
      {
        if ((v36 != 0) == (v37 == 0))
        {
          v19 = 0;
          v43 = v37;
          v41 = v36;
LABEL_46:

          goto LABEL_47;
        }

        v38 = [v36 isEqual:v37];

        if (!v38)
        {
          v19 = 0;
LABEL_47:

          goto LABEL_48;
        }
      }

      subtitle = [(UIAirDropNode *)v5 subtitle];
      subtitle2 = [(UIAirDropNode *)self subtitle];
      v41 = subtitle;
      v42 = subtitle2;
      v43 = v42;
      if (v41 == v42)
      {
        v19 = 1;
      }

      else if ((v41 != 0) == (v42 == 0))
      {
        v19 = 0;
      }

      else
      {
        v19 = [v41 isEqual:v42];
      }

      goto LABEL_46;
    }

    v19 = 0;
  }

LABEL_16:

  return v19;
}

- (BOOL)load
{
  loadHandler = [(UIAirDropNode *)self loadHandler];
  if (loadHandler)
  {
    [(UIAirDropNode *)self setLoadHandler:0];
    peopleSuggestion = [(UIAirDropNode *)self peopleSuggestion];

    if (peopleSuggestion || (-[UIAirDropNode suggestionNode](self, "suggestionNode"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 loadIcon], v5, v6))
    {
      v7 = (loadHandler)[2](loadHandler, self);
    }

    else
    {
      v8 = share_sheet_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(UIAirDropNode *)self load];
      }

      v7 = 0;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)initWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_18B359000, a2, OS_LOG_TYPE_FAULT, "UIAirDropNode:%@ is restricted.", &v2, 0xCu);
}

- (void)load
{
  v6 = *MEMORY[0x1E69E9840];
  suggestionNode = [self suggestionNode];
  v4 = 138412290;
  v5 = suggestionNode;
  _os_log_error_impl(&dword_18B359000, a2, OS_LOG_TYPE_ERROR, "Failed to load icon for suggestionNode:%@", &v4, 0xCu);
}

@end