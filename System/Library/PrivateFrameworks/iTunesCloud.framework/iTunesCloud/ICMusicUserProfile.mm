@interface ICMusicUserProfile
+ (id)attributesInfoFromMediaAPIResponse:(id)a3;
- (BOOL)_capabilityForKey:(id)a3 fromAttributes:(id)a4;
- (BOOL)isEqual:(id)a3;
- (ICMusicUserProfile)initWithCoder:(id)a3;
- (ICMusicUserProfile)initWithMediaAPIResponse:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ICMusicUserProfile

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(ICMusicUserProfile *)self socialProfile];
  v5 = [v3 stringWithFormat:@"[<ICMusicUserProfile:%p> socialProfile=%@ isOnboarded=%d, collaborationAllowed=%d]", self, v4, self->_isOnboarded, self->_collaborationAllowed];;

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[ICMusicUserProfile allocWithZone:?]];
  v5 = [(ICMusicUserProfile *)self name];
  v6 = [v5 copy];
  name = v4->_name;
  v4->_name = v6;

  v8 = [(ICMusicUserProfile *)self artworkInfo];
  v9 = [v8 copy];
  artworkInfo = v4->_artworkInfo;
  v4->_artworkInfo = v9;

  v11 = [(ICMusicUserProfile *)self handle];
  v12 = [v11 copy];
  handle = v4->_handle;
  v4->_handle = v12;

  v14 = [(ICMusicUserProfile *)self socialProfile];
  v15 = [v14 copy];
  socialProfile = v4->_socialProfile;
  v4->_socialProfile = v15;

  v4->_isPrivate = [(ICMusicUserProfile *)self isPrivate];
  v4->_isDiscoverableByContact = [(ICMusicUserProfile *)self isDiscoverableByContact];
  v4->_isContactCheckAllowed = [(ICMusicUserProfile *)self isContactCheckAllowed];
  v4->_isVerified = [(ICMusicUserProfile *)self isVerified];
  v4->_isOnboarded = [(ICMusicUserProfile *)self isOnboarded];
  v4->_collaborationAllowed = [(ICMusicUserProfile *)self collaborationAllowed];
  v4->_displayNameAccepted = [(ICMusicUserProfile *)self displayNameAccepted];
  v17 = [(ICMusicUserProfile *)self acceptedTerms];
  v18 = [v17 copy];
  acceptedTerms = v4->_acceptedTerms;
  v4->_acceptedTerms = v18;

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && (v5 = -[ICMusicUserProfile isPrivate](self, "isPrivate"), v5 == objc_msgSend(v4, "isPrivate")) && (v6 = -[ICMusicUserProfile isDiscoverableByContact](self, "isDiscoverableByContact"), v6 == objc_msgSend(v4, "isDiscoverableByContact")) && (v7 = -[ICMusicUserProfile isContactCheckAllowed](self, "isContactCheckAllowed"), v7 == objc_msgSend(v4, "isContactCheckAllowed")) && (v8 = -[ICMusicUserProfile isVerified](self, "isVerified"), v8 == objc_msgSend(v4, "isVerified")) && (v9 = -[ICMusicUserProfile isOnboarded](self, "isOnboarded"), v9 == objc_msgSend(v4, "isOnboarded")) && (v10 = -[ICMusicUserProfile collaborationAllowed](self, "collaborationAllowed"), v10 == objc_msgSend(v4, "collaborationAllowed")) && (v11 = -[ICMusicUserProfile displayNameAccepted](self, "displayNameAccepted"), v11 == objc_msgSend(v4, "displayNameAccepted")))
  {
    v14 = [(ICMusicUserProfile *)self name];
    v15 = [v4 name];
    if (v14 == v15 || [v14 isEqual:v15])
    {
      v16 = [(ICMusicUserProfile *)self handle];
      v17 = [v4 handle];
      if (v16 == v17 || [v16 isEqual:v17])
      {
        v18 = [(ICMusicUserProfile *)self socialProfileID];
        v19 = [v4 socialProfileID];
        if (v18 == v19 || [v18 isEqual:v19])
        {
          v20 = [(ICMusicUserProfile *)self artworkInfo];
          v21 = [v4 artworkInfo];
          if (v20 == v21 || [v20 isEqual:v21])
          {
            v28 = v19;
            v29 = v18;
            v22 = [(ICMusicUserProfile *)self socialProfile];
            v23 = [v4 socialProfile];
            if (v22 == v23 || [v22 isEqual:v23])
            {
              v24 = [(ICMusicUserProfile *)self acceptedTerms:v21];
              v25 = [v4 acceptedTerms];
              if (v24 == v25)
              {
                v12 = 1;
              }

              else
              {
                v12 = [v24 isEqual:v25];
              }

              v21 = v26;
              v20 = v27;
            }

            else
            {
              v12 = 0;
            }

            v19 = v28;
            v18 = v29;
          }

          else
          {
            v12 = 0;
          }
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (ICMusicUserProfile)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = ICMusicUserProfile;
  v5 = [(ICMusicUserProfile *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"artwork"];
    artworkInfo = v5->_artworkInfo;
    v5->_artworkInfo = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"handle"];
    handle = v5->_handle;
    v5->_handle = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"socialProfile"];
    socialProfile = v5->_socialProfile;
    v5->_socialProfile = v12;

    v5->_isPrivate = [v4 decodeBoolForKey:@"isPrivate"];
    v5->_isDiscoverableByContact = [v4 decodeBoolForKey:@"isDiscoverableByContact"];
    v5->_isContactCheckAllowed = [v4 decodeBoolForKey:@"isContactCheckAllowed"];
    v5->_isVerified = [v4 decodeBoolForKey:@"isVerified"];
    v5->_isOnboarded = [v4 decodeBoolForKey:@"isOnboarded"];
    v5->_collaborationAllowed = [v4 decodeBoolForKey:@"collaborationAllowed"];
    v5->_displayNameAccepted = [v4 decodeBoolForKey:@"displayName"];
    v14 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"acceptedTerms"];
    acceptedTerms = v5->_acceptedTerms;
    v5->_acceptedTerms = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  name = self->_name;
  v5 = a3;
  [v5 encodeObject:name forKey:@"name"];
  [v5 encodeObject:self->_artworkInfo forKey:@"artwork"];
  [v5 encodeObject:self->_handle forKey:@"handle"];
  [v5 encodeObject:self->_socialProfile forKey:@"socialProfile"];
  [v5 encodeBool:self->_isPrivate forKey:@"isPrivate"];
  [v5 encodeBool:self->_isDiscoverableByContact forKey:@"isDiscoverableByContact"];
  [v5 encodeBool:self->_isContactCheckAllowed forKey:@"isContactCheckAllowed"];
  [v5 encodeBool:self->_isVerified forKey:@"isVerified"];
  [v5 encodeBool:self->_isOnboarded forKey:@"isOnboarded"];
  [v5 encodeBool:self->_collaborationAllowed forKey:@"collaborationAllowed"];
  [v5 encodeBool:self->_displayNameAccepted forKey:@"displayName"];
  [v5 encodeObject:self->_acceptedTerms forKey:@"acceptedTerms"];
}

- (BOOL)_capabilityForKey:(id)a3 fromAttributes:(id)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [a4 objectForKeyedSubscript:v5];
  if ((_NSIsNSNumber() & 1) != 0 || _NSIsNSString())
  {
    v7 = [v6 BOOLValue];
  }

  else
  {
    v8 = os_log_create("com.apple.amp.iTunesCloud", "UserState");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v5;
      _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_ERROR, "[ICMusicUserProfile] attributesInfo missing value for key '%@'. Defaulting to NO", &v10, 0xCu);
    }

    v7 = 0;
  }

  return v7;
}

- (ICMusicUserProfile)initWithMediaAPIResponse:(id)a3
{
  v4 = a3;
  v5 = [ICMusicUserProfile attributesInfoFromMediaAPIResponse:v4];
  if (v5)
  {
    v27.receiver = self;
    v27.super_class = ICMusicUserProfile;
    v6 = [(ICMusicUserProfile *)&v27 init];
    if (v6)
    {
      v7 = [v5 objectForKeyedSubscript:@"name"];
      name = v6->_name;
      v6->_name = v7;

      v6->_isPrivate = [(ICMusicUserProfile *)v6 _capabilityForKey:@"isPrivate" fromAttributes:v5];
      v6->_isDiscoverableByContact = [(ICMusicUserProfile *)v6 _capabilityForKey:@"isDiscoverableByContact" fromAttributes:v5];
      v6->_isContactCheckAllowed = [(ICMusicUserProfile *)v6 _capabilityForKey:@"isContactCheckAllowed" fromAttributes:v5];
      v6->_isVerified = [(ICMusicUserProfile *)v6 _capabilityForKey:@"isVerified" fromAttributes:v5];
      v6->_isOnboarded = [(ICMusicUserProfile *)v6 _capabilityForKey:@"isOnboarded" fromAttributes:v5];
      v9 = [v5 objectForKeyedSubscript:@"acceptedTerms"];
      v6->_displayNameAccepted = [v9 containsObject:@"displayName"];
      v6->_collaborationAllowed = [v9 containsObject:@"collaboration"];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __47__ICMusicUserProfile_initWithMediaAPIResponse___block_invoke;
      v25[3] = &unk_1E7BF7A80;
      v10 = v6;
      v26 = v10;
      v11 = [v9 msv_map:v25];
      acceptedTerms = v10->_acceptedTerms;
      v10->_acceptedTerms = v11;

      v13 = [v5 objectForKeyedSubscript:@"artwork"];
      if (_NSIsNSDictionary())
      {
        v14 = [[ICStoreArtworkInfo alloc] initWithArtworkResponseDictionary:v13];
        v15 = v14;
        if (v14)
        {
          v16 = v14;
          p_super = &v10->_artworkInfo->super;
          v10->_artworkInfo = v16;
        }

        else
        {
          p_super = os_log_create("com.apple.amp.iTunesCloud", "UserState");
          if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
          {
            v24 = 0;
            _os_log_impl(&dword_1B4491000, p_super, OS_LOG_TYPE_ERROR, "[ICMusicUserProfile initWithResponse:] invalid artwork response dictionary", &v24, 2u);
          }
        }
      }

      v19 = [v5 objectForKeyedSubscript:@"handle"];
      handle = v10->_handle;
      v10->_handle = v19;

      v21 = [[ICMusicSocialProfile alloc] initWithMediaAPIResponse:v4];
      socialProfile = v10->_socialProfile;
      v10->_socialProfile = v21;
    }

    self = v6;
    v18 = self;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

__CFString *__47__ICMusicUserProfile_initWithMediaAPIResponse___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (_NSIsNSString())
  {
    v4 = v3;
LABEL_5:
    v5 = v4;
    goto LABEL_9;
  }

  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 stringValue];
    goto LABEL_5;
  }

  v6 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    v7 = *(a1 + 32);
    v9 = 134218242;
    v10 = v7;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_FAULT, "<ICMusicUserProfile %p> initWithMediaAPIResponse: unable to convert acceptedTerm to valid string. item=%@", &v9, 0x16u);
  }

  v5 = &stru_1F2C4A680;
LABEL_9:

  return v5;
}

+ (id)attributesInfoFromMediaAPIResponse:(id)a3
{
  v26[5] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 1;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:@"data"];
    v6 = [v5 firstObject];

    v7 = [v6 objectForKeyedSubscript:@"attributes"];
    v8 = _NSIsNSDictionary();

    if (v8)
    {
      v9 = [v6 objectForKey:@"attributes"];
      v10 = [v9 objectForKey:@"name"];
      v11 = _NSIsNSString();

      if ((v11 & 1) == 0)
      {
        v12 = os_log_create("com.apple.amp.iTunesCloud", "UserState");
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_1B4491000, v12, OS_LOG_TYPE_ERROR, "[ICMusicUserProfile] invalid entry for key 'name'", buf, 2u);
        }

        *(v23 + 24) = 0;
      }

      v26[0] = @"isPrivate";
      v26[1] = @"isDiscoverableByContact";
      v26[2] = @"isContactCheckAllowed";
      v26[3] = @"isVerified";
      v26[4] = @"isOnboarded";
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:5];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __57__ICMusicUserProfile_attributesInfoFromMediaAPIResponse___block_invoke;
      v18[3] = &unk_1E7BF7A58;
      v14 = v9;
      v19 = v14;
      v20 = &v22;
      [v13 enumerateObjectsUsingBlock:v18];
      if (*(v23 + 24))
      {
        v15 = v14;
      }

      else
      {
        v15 = 0;
      }

      v16 = v15;
    }

    else
    {
      v14 = os_log_create("com.apple.amp.iTunesCloud", "UserState");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1B4491000, v14, OS_LOG_TYPE_ERROR, "[ICMusicUserProfile] invalid response. response missing attributes", buf, 2u);
      }

      v16 = 0;
    }
  }

  else
  {
    v6 = os_log_create("com.apple.amp.iTunesCloud", "UserState");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_ERROR, "[ICMusicUserProfile] invalid response. response=nil", buf, 2u);
    }

    v16 = 0;
  }

  _Block_object_dispose(&v22, 8);

  return v16;
}

void __57__ICMusicUserProfile_attributesInfoFromMediaAPIResponse___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) objectForKey:v3];
  if ((_NSIsNSNumber() & 1) == 0 && (_NSIsNSString() & 1) == 0)
  {
    v5 = os_log_create("com.apple.amp.iTunesCloud", "UserState");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_ERROR, "[ICMusicUserProfile] invalid entry for key '%@'", &v6, 0xCu);
    }

    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

@end