@interface UIAirDropNode
+ (UIAirDropNode)nodeWithIdentifier:(id)a3 displayName:(id)a4 subtitle:(id)a5 avatarImageSlotID:(unsigned int)a6 transportImageSlotID:(unsigned int)a7;
+ (UIAirDropNode)nodeWithIdentifier:(id)a3 peopleSuggestion:(id)a4;
+ (UIAirDropNode)nodeWithIdentifier:(id)a3 suggestionNode:(id)a4;
+ (id)TTRAirDropNode;
- (BOOL)isEqual:(id)a3;
- (BOOL)isTapToRadar;
- (BOOL)load;
- (NSString)description;
- (UIAirDropNode)initWithCoder:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)load;
@end

@implementation UIAirDropNode

+ (UIAirDropNode)nodeWithIdentifier:(id)a3 suggestionNode:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(UIAirDropNode);
  [(UIAirDropNode *)v7 setIdentifier:v6];

  [(UIAirDropNode *)v7 setSuggestionNode:v5];
  v8 = [v5 suggestion];

  -[UIAirDropNode setIsPlaceholder:](v7, "setIsPlaceholder:", [v8 isPlaceholder]);

  return v7;
}

+ (UIAirDropNode)nodeWithIdentifier:(id)a3 displayName:(id)a4 subtitle:(id)a5 avatarImageSlotID:(unsigned int)a6 transportImageSlotID:(unsigned int)a7
{
  v7 = *&a7;
  v8 = *&a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = objc_alloc_init(UIAirDropNode);
  [(UIAirDropNode *)v14 setIdentifier:v13];

  [(UIAirDropNode *)v14 setDisplayName:v12];
  [(UIAirDropNode *)v14 setSubtitle:v11];

  [(UIAirDropNode *)v14 setAvatarImageSlotID:v8];
  [(UIAirDropNode *)v14 setTransportImageSlotID:v7];
  -[UIAirDropNode setMainLabelSlotID:](v14, "setMainLabelSlotID:", [v12 slotIdentifier]);
  [v12 slotTextHeight];
  v16 = v15;

  [(UIAirDropNode *)v14 setMainLabelSlotHeight:v16];

  return v14;
}

+ (UIAirDropNode)nodeWithIdentifier:(id)a3 peopleSuggestion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(UIAirDropNode);
  [(UIAirDropNode *)v7 setIdentifier:v6];

  [(UIAirDropNode *)v7 setPeopleSuggestion:v5];

  return v7;
}

+ (id)TTRAirDropNode
{
  v2 = objc_alloc_init(UIAirDropNode);
  v3 = [MEMORY[0x1E69CDEA8] TTRPeopleSuggestion];
  v4 = objc_alloc(MEMORY[0x1E696AFB0]);
  v5 = [v3 identifier];
  v6 = [v4 initWithUUIDString:v5];
  [(UIAirDropNode *)v2 setIdentifier:v6];

  v7 = objc_alloc(MEMORY[0x1E69CDEB0]);
  v8 = [v3 displayName];
  v9 = [v7 initWithText:v8];
  [(UIAirDropNode *)v2 setDisplayName:v9];

  [(UIAirDropNode *)v2 setPeopleSuggestion:v3];

  return v2;
}

- (BOOL)isTapToRadar
{
  v2 = [(UIAirDropNode *)self peopleSuggestion];
  v3 = [v2 isTapToRadar];

  return v3;
}

- (UIAirDropNode)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(UIAirDropNode *)self init];
  if (v5)
  {
    -[UIAirDropNode setAvatarImageSlotID:](v5, "setAvatarImageSlotID:", [v4 decodeInt32ForKey:@"avatarImageSlotID"]);
    -[UIAirDropNode setTransportImageSlotID:](v5, "setTransportImageSlotID:", [v4 decodeInt32ForKey:@"transportImageSlotID"]);
    -[UIAirDropNode setMainLabelSlotID:](v5, "setMainLabelSlotID:", [v4 decodeInt32ForKey:@"mainLabelSlotID"]);
    [v4 decodeDoubleForKey:@"mainLabelSlotHeight"];
    [(UIAirDropNode *)v5 setMainLabelSlotHeight:?];
    -[UIAirDropNode setBottomLabelSlotID:](v5, "setBottomLabelSlotID:", [v4 decodeInt32ForKey:@"bottomLabelSlotID"]);
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"suggestionNodeReason"];
    [(UIAirDropNode *)v5 setSuggestionReason:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
    displayName = v5->_displayName;
    v5->_displayName = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subtitle"];
    subtitle = v5->_subtitle;
    v5->_subtitle = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v11;

    v5->_isMagicHead = [v4 decodeBoolForKey:@"isMagicHead"];
    v5->_selectionReason = [v4 decodeInt64ForKey:@"selectionReason"];
    v5->_hasSquareImage = [v4 decodeBoolForKey:@"hasSquareImage"];
    v5->_isDisabled = [v4 decodeBoolForKey:@"isDisabled"];
    v5->_isRestricted = [v4 decodeBoolForKey:@"isRestricted"];
    v5->_isPlaceholder = [v4 decodeBoolForKey:@"isPlaceholder"];
    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"peopleSuggestion"];
    peopleSuggestion = v5->_peopleSuggestion;
    v5->_peopleSuggestion = v13;

    if ([(UIAirDropNode *)v5 mainLabelSlotID])
    {
      v15 = [(UIAirDropNode *)v5 displayName];
      v16 = [v15 slotIdentifier];

      if (!v16)
      {
        v17 = objc_alloc(MEMORY[0x1E69CDEB0]);
        v18 = [(UIAirDropNode *)v5 mainLabelSlotID];
        [(UIAirDropNode *)v5 mainLabelSlotHeight];
        v19 = [v17 initWithSlotIdentifier:v18 slotTextHeight:?];
        [(UIAirDropNode *)v5 setDisplayName:v19];
      }
    }

    if ([(UIAirDropNode *)v5 bottomLabelSlotID])
    {
      v20 = [(UIAirDropNode *)v5 subtitle];
      v21 = [v20 slotIdentifier];

      if (!v21)
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

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  [v6 encodeInt32:-[UIAirDropNode avatarImageSlotID](self forKey:{"avatarImageSlotID"), @"avatarImageSlotID"}];
  [v6 encodeInt32:-[UIAirDropNode transportImageSlotID](self forKey:{"transportImageSlotID"), @"transportImageSlotID"}];
  [v6 encodeInt32:-[UIAirDropNode mainLabelSlotID](self forKey:{"mainLabelSlotID"), @"mainLabelSlotID"}];
  [(UIAirDropNode *)self mainLabelSlotHeight];
  [v6 encodeDouble:@"mainLabelSlotHeight" forKey:?];
  [v6 encodeInt32:-[UIAirDropNode bottomLabelSlotID](self forKey:{"bottomLabelSlotID"), @"bottomLabelSlotID"}];
  v4 = [(UIAirDropNode *)self suggestionNode];
  v5 = [v4 suggestionReason];
  [v6 encodeObject:v5 forKey:@"suggestionNodeReason"];

  [v6 encodeObject:self->_displayName forKey:@"displayName"];
  [v6 encodeObject:self->_subtitle forKey:@"subtitle"];
  [v6 encodeObject:self->_identifier forKey:@"identifier"];
  [v6 encodeBool:self->_isMagicHead forKey:@"isMagicHead"];
  [v6 encodeInt64:self->_selectionReason forKey:@"selectionReason"];
  [v6 encodeBool:self->_hasSquareImage forKey:@"hasSquareImage"];
  [v6 encodeBool:self->_isDisabled forKey:@"isDisabled"];
  [v6 encodeBool:self->_isRestricted forKey:@"isRestricted"];
  [v6 encodeBool:self->_isPlaceholder forKey:@"isPlaceholder"];
  [v6 encodeObject:self->_peopleSuggestion forKey:@"peopleSuggestion"];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v18.receiver = self;
  v18.super_class = UIAirDropNode;
  v4 = [(UIAirDropNode *)&v18 description];
  v5 = [(UIAirDropNode *)self identifier];
  v6 = [(UIAirDropNode *)self avatarImageSlotID];
  v7 = [(UIAirDropNode *)self transportImageSlotID];
  v8 = [(UIAirDropNode *)self mainLabelSlotID];
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

  v13 = [v3 stringWithFormat:@"<%@: identifier:%@ avatarImageSlotID:%u, transportImageSlotID:%u, textSlotID:%u, textSlotHeight:%f, peopleSuggestion:%@, isDisabled:%@, isRestricted:%@ displayName:%@ subtitle:%@ isPlaceholder:%@", v4, v5, v6, v7, v8, v9, self->_peopleSuggestion, v10, v11, self->_displayName, self->_subtitle, v12];

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

  v6 = [(UIAirDropNode *)self identifier];
  v7 = [v6 hash];

  return v7 ^ v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v19 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(UIAirDropNode *)v5 avatarImageSlotID];
      if (v6 != [(UIAirDropNode *)self avatarImageSlotID]|| (v7 = [(UIAirDropNode *)v5 mainLabelSlotID], v7 != [(UIAirDropNode *)self mainLabelSlotID]) || ([(UIAirDropNode *)v5 mainLabelSlotHeight], v9 = v8, [(UIAirDropNode *)self mainLabelSlotHeight], v9 != v10) || (v11 = [(UIAirDropNode *)v5 bottomLabelSlotID], v11 != [(UIAirDropNode *)self bottomLabelSlotID]) || (v12 = [(UIAirDropNode *)v5 transportImageSlotID], v12 != [(UIAirDropNode *)self transportImageSlotID]))
      {
        v19 = 0;
LABEL_15:

        goto LABEL_16;
      }

      v13 = [(UIAirDropNode *)v5 identifier];
      v14 = [(UIAirDropNode *)self identifier];
      v15 = v13;
      v16 = v14;
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

      v21 = [(UIAirDropNode *)v5 isMagicHead];
      if (v21 != [(UIAirDropNode *)self isMagicHead])
      {
        goto LABEL_24;
      }

      v22 = [(UIAirDropNode *)v5 selectionReason];
      if (v22 != [(UIAirDropNode *)self selectionReason])
      {
        goto LABEL_24;
      }

      v23 = [(UIAirDropNode *)v5 hasSquareImage];
      if (v23 != [(UIAirDropNode *)self hasSquareImage])
      {
        goto LABEL_24;
      }

      v24 = [(UIAirDropNode *)v5 isDisabled];
      if (v24 != [(UIAirDropNode *)self isDisabled])
      {
        goto LABEL_24;
      }

      v25 = [(UIAirDropNode *)v5 isRestricted];
      if (v25 != [(UIAirDropNode *)self isRestricted])
      {
        goto LABEL_24;
      }

      v26 = [(UIAirDropNode *)v5 isPlaceholder];
      if (v26 != [(UIAirDropNode *)self isPlaceholder])
      {
        goto LABEL_24;
      }

      v29 = [(UIAirDropNode *)v5 peopleSuggestion];
      v30 = [(UIAirDropNode *)self peopleSuggestion];
      v28 = v29;
      v31 = v30;
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

      v34 = [(UIAirDropNode *)v5 displayName];
      v35 = [(UIAirDropNode *)self displayName];
      v36 = v34;
      v37 = v35;
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

      v39 = [(UIAirDropNode *)v5 subtitle];
      v40 = [(UIAirDropNode *)self subtitle];
      v41 = v39;
      v42 = v40;
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
  v3 = [(UIAirDropNode *)self loadHandler];
  if (v3)
  {
    [(UIAirDropNode *)self setLoadHandler:0];
    v4 = [(UIAirDropNode *)self peopleSuggestion];

    if (v4 || (-[UIAirDropNode suggestionNode](self, "suggestionNode"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 loadIcon], v5, v6))
    {
      v7 = (v3)[2](v3, self);
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
  v3 = [a1 suggestionNode];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_18B359000, a2, OS_LOG_TYPE_ERROR, "Failed to load icon for suggestionNode:%@", &v4, 0xCu);
}

@end