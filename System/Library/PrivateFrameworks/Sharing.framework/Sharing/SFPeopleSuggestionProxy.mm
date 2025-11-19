@interface SFPeopleSuggestionProxy
- (BOOL)isEqual:(id)a3;
- (BOOL)load;
- (NSString)description;
- (SFPeopleSuggestionProxy)initWithCoder:(id)a3;
- (SFPeopleSuggestionProxy)initWithPeopleSuggestion:(id)a3;
- (SFPeopleSuggestionProxy)initWithSuggestionNode:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)load;
@end

@implementation SFPeopleSuggestionProxy

- (SFPeopleSuggestionProxy)initWithPeopleSuggestion:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = SFPeopleSuggestionProxy;
  v6 = [(SFPeopleSuggestionProxy *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_peopleSuggestion, a3);
    v8 = [MEMORY[0x1E696AFB0] UUID];
    identifier = v7->_identifier;
    v7->_identifier = v8;

    v10 = [SFProxyText alloc];
    v11 = [v5 displayName];
    v12 = [(SFProxyText *)v10 initWithText:v11];
    displayName = v7->_displayName;
    v7->_displayName = v12;

    v7->_disabled = 0;
  }

  return v7;
}

- (SFPeopleSuggestionProxy)initWithSuggestionNode:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = SFPeopleSuggestionProxy;
  v6 = [(SFPeopleSuggestionProxy *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_suggestionNode, a3);
    v8 = [MEMORY[0x1E696AFB0] UUID];
    identifier = v7->_identifier;
    v7->_identifier = v8;

    v10 = [SFProxyText alloc];
    v11 = [v5 displayName];
    v12 = [(SFProxyText *)v10 initWithText:v11];
    displayName = v7->_displayName;
    v7->_displayName = v12;

    v7->_disabled = 0;
  }

  return v7;
}

- (SFPeopleSuggestionProxy)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SFPeopleSuggestionProxy *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
    displayName = v5->_displayName;
    v5->_displayName = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subtitle"];
    subtitle = v5->_subtitle;
    v5->_subtitle = v10;

    -[SFPeopleSuggestionProxy setAvatarImageSlotID:](v5, "setAvatarImageSlotID:", [v4 decodeInt32ForKey:@"avatarImageSlotID"]);
    -[SFPeopleSuggestionProxy setTransportImageSlotID:](v5, "setTransportImageSlotID:", [v4 decodeInt32ForKey:@"transportImageSlotID"]);
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"peopleSuggestion"];
    peopleSuggestion = v5->_peopleSuggestion;
    v5->_peopleSuggestion = v12;

    v5->_disabled = [v4 decodeBoolForKey:@"disabled"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_displayName forKey:@"displayName"];
  [v5 encodeObject:self->_subtitle forKey:@"subtitle"];
  [v5 encodeInt32:-[SFPeopleSuggestionProxy avatarImageSlotID](self forKey:{"avatarImageSlotID"), @"avatarImageSlotID"}];
  [v5 encodeInt32:-[SFPeopleSuggestionProxy transportImageSlotID](self forKey:{"transportImageSlotID"), @"transportImageSlotID"}];
  [v5 encodeObject:self->_peopleSuggestion forKey:@"peopleSuggestion"];
  [v5 encodeBool:self->_disabled forKey:@"disabled"];
}

- (NSString)description
{
  v14 = MEMORY[0x1E696AEC0];
  v15.receiver = self;
  v15.super_class = SFPeopleSuggestionProxy;
  v3 = [(SFPeopleSuggestionProxy *)&v15 description];
  v4 = [(SFPeopleSuggestionProxy *)self identifier];
  v5 = [(SFPeopleSuggestionProxy *)self displayName];
  v6 = [(SFPeopleSuggestionProxy *)self subtitle];
  v7 = [(SFPeopleSuggestionProxy *)self avatarImageSlotID];
  v8 = [(SFPeopleSuggestionProxy *)self transportImageSlotID];
  if ([(SFPeopleSuggestionProxy *)self isDisabled])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  v10 = [(SFPeopleSuggestionProxy *)self peopleSuggestion];
  if (v10)
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  v12 = [v14 stringWithFormat:@"<%@: identifier:%@, displayName:%@, subtitle:%@, avatarImageSlotID:%u, transportImageSlotID:%u, disabled:%@ peopleSuggestion:%@>", v3, v4, v5, v6, v7, v8, v9, v11];

  return v12;
}

- (unint64_t)hash
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v4 hash];

  v6 = [(SFPeopleSuggestionProxy *)self identifier];
  v7 = [v6 hash];

  v8 = [(SFPeopleSuggestionProxy *)self displayName];
  v9 = v7 ^ [v8 hash];

  return v9 ^ v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 identifier];
    v6 = [(SFPeopleSuggestionProxy *)self identifier];
    v7 = v5;
    v8 = v6;
    v9 = v8;
    if (v7 == v8)
    {
    }

    else
    {
      if ((v7 != 0) == (v8 == 0))
      {
        LOBYTE(v11) = 0;
        v13 = v8;
        v12 = v7;
LABEL_17:

        goto LABEL_18;
      }

      v10 = [v7 isEqual:v8];

      if (!v10)
      {
        LOBYTE(v11) = 0;
LABEL_18:

        goto LABEL_19;
      }
    }

    v12 = [v4 displayName];
    v13 = [(SFPeopleSuggestionProxy *)self displayName];
    if ([v12 isEqual:v13])
    {
      v14 = [v4 subtitle];
      v15 = [(SFPeopleSuggestionProxy *)self subtitle];
      if ([v14 isEqual:v15] && (v16 = objc_msgSend(v4, "avatarImageSlotID"), v16 == -[SFPeopleSuggestionProxy avatarImageSlotID](self, "avatarImageSlotID")) && (v17 = objc_msgSend(v4, "transportImageSlotID"), v17 == -[SFPeopleSuggestionProxy transportImageSlotID](self, "transportImageSlotID")))
      {
        v18 = [v4 isDisabled];
        v11 = v18 ^ [(SFPeopleSuggestionProxy *)self isDisabled]^ 1;
      }

      else
      {
        LOBYTE(v11) = 0;
      }
    }

    else
    {
      LOBYTE(v11) = 0;
    }

    goto LABEL_17;
  }

  LOBYTE(v11) = 0;
LABEL_19:

  return v11;
}

- (BOOL)load
{
  v3 = [(SFPeopleSuggestionProxy *)self loadHandler];
  if (v3)
  {
    [(SFPeopleSuggestionProxy *)self setLoadHandler:0];
    v4 = [(SFPeopleSuggestionProxy *)self suggestionNode];
    v5 = [v4 loadIcon];

    if (v5)
    {
      v6 = (v3)[2](v3, self);
    }

    else
    {
      v7 = share_sheet_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(SFPeopleSuggestionProxy *)self load];
      }

      v6 = 0;
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)load
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [a1 suggestionNode];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_1A9662000, a2, OS_LOG_TYPE_ERROR, "Failed to load icon for suggestionNode:%@", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

@end