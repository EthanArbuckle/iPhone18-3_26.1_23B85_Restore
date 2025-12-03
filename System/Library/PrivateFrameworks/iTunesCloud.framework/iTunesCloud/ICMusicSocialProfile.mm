@interface ICMusicSocialProfile
+ (id)socialProfileInfoFromMediaAPIResponse:(id)response;
- (BOOL)isEqual:(id)equal;
- (ICMusicSocialProfile)initWithCoder:(id)coder;
- (ICMusicSocialProfile)initWithMediaAPIResponse:(id)response;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ICMusicSocialProfile

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[ICMusicSocialProfile allocWithZone:?]];
  name = [(ICMusicSocialProfile *)self name];
  v6 = [name copy];
  name = v4->_name;
  v4->_name = v6;

  artworkInfo = [(ICMusicSocialProfile *)self artworkInfo];
  v9 = [artworkInfo copy];
  artworkInfo = v4->_artworkInfo;
  v4->_artworkInfo = v9;

  handle = [(ICMusicSocialProfile *)self handle];
  v12 = [handle copy];
  handle = v4->_handle;
  v4->_handle = v12;

  socialProfileID = [(ICMusicSocialProfile *)self socialProfileID];
  v15 = [socialProfileID copy];
  socialProfileID = v4->_socialProfileID;
  v4->_socialProfileID = v15;

  v4->_isPrivate = [(ICMusicSocialProfile *)self isPrivate];
  v4->_isVerified = [(ICMusicSocialProfile *)self isVerified];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && (v5 = -[ICMusicSocialProfile isPrivate](self, "isPrivate"), v5 == objc_msgSend(equalCopy, "isPrivate")) && (v6 = -[ICMusicSocialProfile isVerified](self, "isVerified"), v6 == objc_msgSend(equalCopy, "isVerified")))
  {
    name = [(ICMusicSocialProfile *)self name];
    name2 = [equalCopy name];
    if (name == name2 || [name isEqual:name2])
    {
      handle = [(ICMusicSocialProfile *)self handle];
      handle2 = [equalCopy handle];
      if (handle == handle2 || [handle isEqual:handle2])
      {
        socialProfileID = [(ICMusicSocialProfile *)self socialProfileID];
        socialProfileID2 = [equalCopy socialProfileID];
        if (socialProfileID == socialProfileID2 || [socialProfileID isEqual:socialProfileID2])
        {
          artworkInfo = [(ICMusicSocialProfile *)self artworkInfo];
          artworkInfo2 = [equalCopy artworkInfo];
          if (artworkInfo == artworkInfo2)
          {
            v7 = 1;
          }

          else
          {
            v7 = [artworkInfo isEqual:artworkInfo2];
          }
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

  return v7;
}

- (ICMusicSocialProfile)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = ICMusicSocialProfile;
  v5 = [(ICMusicSocialProfile *)&v15 init];
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

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"socialProfileID"];
    socialProfileID = v5->_socialProfileID;
    v5->_socialProfileID = v12;

    v5->_isPrivate = [coderCopy decodeBoolForKey:@"isPrivate"];
    v5->_isVerified = [coderCopy decodeBoolForKey:@"isVerified"];
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
  [coderCopy encodeObject:self->_socialProfileID forKey:@"socialProfileID"];
  [coderCopy encodeBool:self->_isPrivate forKey:@"isPrivate"];
  [coderCopy encodeBool:self->_isVerified forKey:@"isVerified"];
}

- (ICMusicSocialProfile)initWithMediaAPIResponse:(id)response
{
  v4 = [ICMusicSocialProfile socialProfileInfoFromMediaAPIResponse:response];
  if (v4)
  {
    v24.receiver = self;
    v24.super_class = ICMusicSocialProfile;
    v5 = [(ICMusicSocialProfile *)&v24 init];
    if (v5)
    {
      v6 = [v4 valueForKeyPath:@"attributes.name"];
      name = v5->_name;
      v5->_name = v6;

      v8 = [v4 valueForKeyPath:@"id"];
      socialProfileID = v5->_socialProfileID;
      v5->_socialProfileID = v8;

      v10 = [v4 valueForKeyPath:@"attributes.handle"];
      handle = v5->_handle;
      v5->_handle = v10;

      v12 = [v4 valueForKeyPath:@"attributes.isPrivate"];
      if ((_NSIsNSString() & 1) != 0 || (v13 = _NSIsNSNumber()) != 0)
      {
        LOBYTE(v13) = [v12 BOOLValue];
      }

      v5->_isPrivate = v13;
      v14 = [v4 valueForKeyPath:@"attributes.isVerified"];
      if ((_NSIsNSString() & 1) != 0 || (v15 = _NSIsNSNumber()) != 0)
      {
        LOBYTE(v15) = [v14 BOOLValue];
      }

      v5->_isVerified = v15;
      v16 = [v4 valueForKeyPath:@"attributes.artwork"];
      if (_NSIsNSDictionary())
      {
        v17 = [[ICStoreArtworkInfo alloc] initWithArtworkResponseDictionary:v16];
        v18 = v17;
        if (v17)
        {
          v19 = v17;
          p_super = &v5->_artworkInfo->super;
          v5->_artworkInfo = v19;
        }

        else
        {
          p_super = os_log_create("com.apple.amp.iTunesCloud", "UserState");
          if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
          {
            *v23 = 0;
            _os_log_impl(&dword_1B4491000, p_super, OS_LOG_TYPE_ERROR, "[ICMusicSocialProfile initWithResponse:] invalid artwork response dictionary", v23, 2u);
          }
        }
      }
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)socialProfileInfoFromMediaAPIResponse:(id)response
{
  if (response)
  {
    v3 = [response objectForKeyedSubscript:@"data"];
    firstObject = [v3 firstObject];

    if (!firstObject)
    {
      v5 = os_log_create("com.apple.amp.iTunesCloud", "UserState");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *v20 = 0;
        _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_ERROR, "[ICMusicSocialProfile] invalid response. userData=nil", v20, 2u);
      }

      v12 = 0;
      goto LABEL_22;
    }

    v5 = [firstObject valueForKeyPath:@"relationships.social-profile.data"];
    firstObject2 = [v5 firstObject];
    v7 = firstObject2;
    if (firstObject2)
    {
      v8 = [firstObject2 valueForKeyPath:@"id"];
      v9 = _NSIsNSString();

      if (v9)
      {
        v10 = [v7 valueForKeyPath:@"attributes.name"];
        v11 = _NSIsNSString();

        if (v11)
        {
          v12 = v7;
LABEL_21:

LABEL_22:
          goto LABEL_23;
        }

        v13 = os_log_create("com.apple.amp.iTunesCloud", "UserState");
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v17 = 0;
          v14 = "[ICMusicSocialProfile] invalid response. name=nil";
          v15 = &v17;
          goto LABEL_19;
        }

LABEL_20:

        v12 = 0;
        goto LABEL_21;
      }

      v13 = os_log_create("com.apple.amp.iTunesCloud", "UserState");
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_20;
      }

      v18 = 0;
      v14 = "[ICMusicSocialProfile] invalid response. socialProfileID=nil";
      v15 = &v18;
    }

    else
    {
      v13 = os_log_create("com.apple.amp.iTunesCloud", "UserState");
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_20;
      }

      v19 = 0;
      v14 = "[ICMusicSocialProfile] invalid response. socialProfileInfo=nil";
      v15 = &v19;
    }

LABEL_19:
    _os_log_impl(&dword_1B4491000, v13, OS_LOG_TYPE_ERROR, v14, v15, 2u);
    goto LABEL_20;
  }

  firstObject = os_log_create("com.apple.amp.iTunesCloud", "UserState");
  if (os_log_type_enabled(firstObject, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1B4491000, firstObject, OS_LOG_TYPE_ERROR, "[ICMusicSocialProfile] invalid response. response=nil", buf, 2u);
  }

  v12 = 0;
LABEL_23:

  return v12;
}

@end