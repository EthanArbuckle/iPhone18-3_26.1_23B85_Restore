@interface ICMusicUserProfile
+ (id)attributesInfoFromMediaAPIResponse:(id)response;
- (BOOL)_capabilityForKey:(id)key fromAttributes:(id)attributes;
- (BOOL)isEqual:(id)equal;
- (ICMusicUserProfile)initWithCoder:(id)coder;
- (ICMusicUserProfile)initWithMediaAPIResponse:(id)response;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ICMusicUserProfile

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  socialProfile = [(ICMusicUserProfile *)self socialProfile];
  v5 = [v3 stringWithFormat:@"[<ICMusicUserProfile:%p> socialProfile=%@ isOnboarded=%d, collaborationAllowed=%d]", self, socialProfile, self->_isOnboarded, self->_collaborationAllowed];;

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[ICMusicUserProfile allocWithZone:?]];
  name = [(ICMusicUserProfile *)self name];
  v6 = [name copy];
  name = v4->_name;
  v4->_name = v6;

  artworkInfo = [(ICMusicUserProfile *)self artworkInfo];
  v9 = [artworkInfo copy];
  artworkInfo = v4->_artworkInfo;
  v4->_artworkInfo = v9;

  handle = [(ICMusicUserProfile *)self handle];
  v12 = [handle copy];
  handle = v4->_handle;
  v4->_handle = v12;

  socialProfile = [(ICMusicUserProfile *)self socialProfile];
  v15 = [socialProfile copy];
  socialProfile = v4->_socialProfile;
  v4->_socialProfile = v15;

  v4->_isPrivate = [(ICMusicUserProfile *)self isPrivate];
  v4->_isDiscoverableByContact = [(ICMusicUserProfile *)self isDiscoverableByContact];
  v4->_isContactCheckAllowed = [(ICMusicUserProfile *)self isContactCheckAllowed];
  v4->_isVerified = [(ICMusicUserProfile *)self isVerified];
  v4->_isOnboarded = [(ICMusicUserProfile *)self isOnboarded];
  v4->_collaborationAllowed = [(ICMusicUserProfile *)self collaborationAllowed];
  v4->_displayNameAccepted = [(ICMusicUserProfile *)self displayNameAccepted];
  acceptedTerms = [(ICMusicUserProfile *)self acceptedTerms];
  v18 = [acceptedTerms copy];
  acceptedTerms = v4->_acceptedTerms;
  v4->_acceptedTerms = v18;

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && (v5 = -[ICMusicUserProfile isPrivate](self, "isPrivate"), v5 == objc_msgSend(equalCopy, "isPrivate")) && (v6 = -[ICMusicUserProfile isDiscoverableByContact](self, "isDiscoverableByContact"), v6 == objc_msgSend(equalCopy, "isDiscoverableByContact")) && (v7 = -[ICMusicUserProfile isContactCheckAllowed](self, "isContactCheckAllowed"), v7 == objc_msgSend(equalCopy, "isContactCheckAllowed")) && (v8 = -[ICMusicUserProfile isVerified](self, "isVerified"), v8 == objc_msgSend(equalCopy, "isVerified")) && (v9 = -[ICMusicUserProfile isOnboarded](self, "isOnboarded"), v9 == objc_msgSend(equalCopy, "isOnboarded")) && (v10 = -[ICMusicUserProfile collaborationAllowed](self, "collaborationAllowed"), v10 == objc_msgSend(equalCopy, "collaborationAllowed")) && (v11 = -[ICMusicUserProfile displayNameAccepted](self, "displayNameAccepted"), v11 == objc_msgSend(equalCopy, "displayNameAccepted")))
  {
    name = [(ICMusicUserProfile *)self name];
    name2 = [equalCopy name];
    if (name == name2 || [name isEqual:name2])
    {
      handle = [(ICMusicUserProfile *)self handle];
      handle2 = [equalCopy handle];
      if (handle == handle2 || [handle isEqual:handle2])
      {
        socialProfileID = [(ICMusicUserProfile *)self socialProfileID];
        socialProfileID2 = [equalCopy socialProfileID];
        if (socialProfileID == socialProfileID2 || [socialProfileID isEqual:socialProfileID2])
        {
          artworkInfo = [(ICMusicUserProfile *)self artworkInfo];
          artworkInfo2 = [equalCopy artworkInfo];
          if (artworkInfo == artworkInfo2 || [artworkInfo isEqual:artworkInfo2])
          {
            v28 = socialProfileID2;
            v29 = socialProfileID;
            socialProfile = [(ICMusicUserProfile *)self socialProfile];
            socialProfile2 = [equalCopy socialProfile];
            if (socialProfile == socialProfile2 || [socialProfile isEqual:socialProfile2])
            {
              v24 = [(ICMusicUserProfile *)self acceptedTerms:artworkInfo2];
              acceptedTerms = [equalCopy acceptedTerms];
              if (v24 == acceptedTerms)
              {
                v12 = 1;
              }

              else
              {
                v12 = [v24 isEqual:acceptedTerms];
              }

              artworkInfo2 = v26;
              artworkInfo = v27;
            }

            else
            {
              v12 = 0;
            }

            socialProfileID2 = v28;
            socialProfileID = v29;
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

- (ICMusicUserProfile)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = ICMusicUserProfile;
  v5 = [(ICMusicUserProfile *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"artwork"];
    artworkInfo = v5->_artworkInfo;
    v5->_artworkInfo = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"handle"];
    handle = v5->_handle;
    v5->_handle = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"socialProfile"];
    socialProfile = v5->_socialProfile;
    v5->_socialProfile = v12;

    v5->_isPrivate = [coderCopy decodeBoolForKey:@"isPrivate"];
    v5->_isDiscoverableByContact = [coderCopy decodeBoolForKey:@"isDiscoverableByContact"];
    v5->_isContactCheckAllowed = [coderCopy decodeBoolForKey:@"isContactCheckAllowed"];
    v5->_isVerified = [coderCopy decodeBoolForKey:@"isVerified"];
    v5->_isOnboarded = [coderCopy decodeBoolForKey:@"isOnboarded"];
    v5->_collaborationAllowed = [coderCopy decodeBoolForKey:@"collaborationAllowed"];
    v5->_displayNameAccepted = [coderCopy decodeBoolForKey:@"displayName"];
    v14 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"acceptedTerms"];
    acceptedTerms = v5->_acceptedTerms;
    v5->_acceptedTerms = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  name = self->_name;
  coderCopy = coder;
  [coderCopy encodeObject:name forKey:@"name"];
  [coderCopy encodeObject:self->_artworkInfo forKey:@"artwork"];
  [coderCopy encodeObject:self->_handle forKey:@"handle"];
  [coderCopy encodeObject:self->_socialProfile forKey:@"socialProfile"];
  [coderCopy encodeBool:self->_isPrivate forKey:@"isPrivate"];
  [coderCopy encodeBool:self->_isDiscoverableByContact forKey:@"isDiscoverableByContact"];
  [coderCopy encodeBool:self->_isContactCheckAllowed forKey:@"isContactCheckAllowed"];
  [coderCopy encodeBool:self->_isVerified forKey:@"isVerified"];
  [coderCopy encodeBool:self->_isOnboarded forKey:@"isOnboarded"];
  [coderCopy encodeBool:self->_collaborationAllowed forKey:@"collaborationAllowed"];
  [coderCopy encodeBool:self->_displayNameAccepted forKey:@"displayName"];
  [coderCopy encodeObject:self->_acceptedTerms forKey:@"acceptedTerms"];
}

- (BOOL)_capabilityForKey:(id)key fromAttributes:(id)attributes
{
  v12 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v6 = [attributes objectForKeyedSubscript:keyCopy];
  if ((_NSIsNSNumber() & 1) != 0 || _NSIsNSString())
  {
    bOOLValue = [v6 BOOLValue];
  }

  else
  {
    v8 = os_log_create("com.apple.amp.iTunesCloud", "UserState");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = keyCopy;
      _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_ERROR, "[ICMusicUserProfile] attributesInfo missing value for key '%@'. Defaulting to NO", &v10, 0xCu);
    }

    bOOLValue = 0;
  }

  return bOOLValue;
}

- (ICMusicUserProfile)initWithMediaAPIResponse:(id)response
{
  responseCopy = response;
  v5 = [ICMusicUserProfile attributesInfoFromMediaAPIResponse:responseCopy];
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

      v21 = [[ICMusicSocialProfile alloc] initWithMediaAPIResponse:responseCopy];
      socialProfile = v10->_socialProfile;
      v10->_socialProfile = v21;
    }

    self = v6;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
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

+ (id)attributesInfoFromMediaAPIResponse:(id)response
{
  v26[5] = *MEMORY[0x1E69E9840];
  responseCopy = response;
  v4 = responseCopy;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 1;
  if (responseCopy)
  {
    v5 = [responseCopy objectForKeyedSubscript:@"data"];
    firstObject = [v5 firstObject];

    v7 = [firstObject objectForKeyedSubscript:@"attributes"];
    v8 = _NSIsNSDictionary();

    if (v8)
    {
      v9 = [firstObject objectForKey:@"attributes"];
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
    firstObject = os_log_create("com.apple.amp.iTunesCloud", "UserState");
    if (os_log_type_enabled(firstObject, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1B4491000, firstObject, OS_LOG_TYPE_ERROR, "[ICMusicUserProfile] invalid response. response=nil", buf, 2u);
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