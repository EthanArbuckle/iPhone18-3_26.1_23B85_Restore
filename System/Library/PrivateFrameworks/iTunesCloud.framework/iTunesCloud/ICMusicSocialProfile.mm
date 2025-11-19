@interface ICMusicSocialProfile
+ (id)socialProfileInfoFromMediaAPIResponse:(id)a3;
- (BOOL)isEqual:(id)a3;
- (ICMusicSocialProfile)initWithCoder:(id)a3;
- (ICMusicSocialProfile)initWithMediaAPIResponse:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ICMusicSocialProfile

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[ICMusicSocialProfile allocWithZone:?]];
  v5 = [(ICMusicSocialProfile *)self name];
  v6 = [v5 copy];
  name = v4->_name;
  v4->_name = v6;

  v8 = [(ICMusicSocialProfile *)self artworkInfo];
  v9 = [v8 copy];
  artworkInfo = v4->_artworkInfo;
  v4->_artworkInfo = v9;

  v11 = [(ICMusicSocialProfile *)self handle];
  v12 = [v11 copy];
  handle = v4->_handle;
  v4->_handle = v12;

  v14 = [(ICMusicSocialProfile *)self socialProfileID];
  v15 = [v14 copy];
  socialProfileID = v4->_socialProfileID;
  v4->_socialProfileID = v15;

  v4->_isPrivate = [(ICMusicSocialProfile *)self isPrivate];
  v4->_isVerified = [(ICMusicSocialProfile *)self isVerified];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && (v5 = -[ICMusicSocialProfile isPrivate](self, "isPrivate"), v5 == objc_msgSend(v4, "isPrivate")) && (v6 = -[ICMusicSocialProfile isVerified](self, "isVerified"), v6 == objc_msgSend(v4, "isVerified")))
  {
    v9 = [(ICMusicSocialProfile *)self name];
    v10 = [v4 name];
    if (v9 == v10 || [v9 isEqual:v10])
    {
      v11 = [(ICMusicSocialProfile *)self handle];
      v12 = [v4 handle];
      if (v11 == v12 || [v11 isEqual:v12])
      {
        v13 = [(ICMusicSocialProfile *)self socialProfileID];
        v14 = [v4 socialProfileID];
        if (v13 == v14 || [v13 isEqual:v14])
        {
          v15 = [(ICMusicSocialProfile *)self artworkInfo];
          v16 = [v4 artworkInfo];
          if (v15 == v16)
          {
            v7 = 1;
          }

          else
          {
            v7 = [v15 isEqual:v16];
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

- (ICMusicSocialProfile)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = ICMusicSocialProfile;
  v5 = [(ICMusicSocialProfile *)&v15 init];
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

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"socialProfileID"];
    socialProfileID = v5->_socialProfileID;
    v5->_socialProfileID = v12;

    v5->_isPrivate = [v4 decodeBoolForKey:@"isPrivate"];
    v5->_isVerified = [v4 decodeBoolForKey:@"isVerified"];
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
  [v5 encodeObject:self->_socialProfileID forKey:@"socialProfileID"];
  [v5 encodeBool:self->_isPrivate forKey:@"isPrivate"];
  [v5 encodeBool:self->_isVerified forKey:@"isVerified"];
}

- (ICMusicSocialProfile)initWithMediaAPIResponse:(id)a3
{
  v4 = [ICMusicSocialProfile socialProfileInfoFromMediaAPIResponse:a3];
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
    v21 = self;
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

+ (id)socialProfileInfoFromMediaAPIResponse:(id)a3
{
  if (a3)
  {
    v3 = [a3 objectForKeyedSubscript:@"data"];
    v4 = [v3 firstObject];

    if (!v4)
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

    v5 = [v4 valueForKeyPath:@"relationships.social-profile.data"];
    v6 = [v5 firstObject];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 valueForKeyPath:@"id"];
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

  v4 = os_log_create("com.apple.amp.iTunesCloud", "UserState");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "[ICMusicSocialProfile] invalid response. response=nil", buf, 2u);
  }

  v12 = 0;
LABEL_23:

  return v12;
}

@end