@interface WBSPasswordImportedCredential
- (BOOL)isEqual:(id)equal;
- (WBSPasswordImportedCredential)initWithCoder:(id)coder;
- (WBSPasswordImportedCredential)initWithUser:(id)user password:(id)password url:(id)url otpAuthURL:(id)l title:(id)title notesEntry:(id)entry lineNumberFromSourceFile:(unint64_t)file;
- (int64_t)compare:(id)compare;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WBSPasswordImportedCredential

- (WBSPasswordImportedCredential)initWithUser:(id)user password:(id)password url:(id)url otpAuthURL:(id)l title:(id)title notesEntry:(id)entry lineNumberFromSourceFile:(unint64_t)file
{
  userCopy = user;
  passwordCopy = password;
  urlCopy = url;
  lCopy = l;
  titleCopy = title;
  entryCopy = entry;
  v36.receiver = self;
  v36.super_class = WBSPasswordImportedCredential;
  v21 = [(WBSPasswordImportedCredential *)&v36 init];
  if (v21)
  {
    v22 = [userCopy copy];
    v23 = v22;
    if (v22)
    {
      v24 = v22;
    }

    else
    {
      v24 = &stru_1F3A5E418;
    }

    objc_storeStrong(&v21->_user, v24);

    v25 = [passwordCopy copy];
    v26 = v25;
    if (v25)
    {
      v27 = v25;
    }

    else
    {
      v27 = &stru_1F3A5E418;
    }

    objc_storeStrong(&v21->_password, v27);

    objc_storeStrong(&v21->_url, url);
    v28 = [lCopy copy];
    otpAuthURL = v21->_otpAuthURL;
    v21->_otpAuthURL = v28;

    v30 = [titleCopy copy];
    title = v21->_title;
    v21->_title = v30;

    v32 = [entryCopy copy];
    notesEntry = v21->_notesEntry;
    v21->_notesEntry = v32;

    v21->_lineNumberFromSourceFile = file;
    v34 = v21;
  }

  return v21;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      user = [(WBSPasswordImportedCredential *)v5 user];
      if (WBSIsEqual())
      {
        otpAuthURL = [(WBSPasswordImportedCredential *)v5 otpAuthURL];
        if (WBSIsEqual())
        {
          notesEntry = [(WBSPasswordImportedCredential *)v5 notesEntry];
          if (WBSIsEqual())
          {
            title = [(WBSPasswordImportedCredential *)v5 title];
            if (WBSIsEqual())
            {
              password = [(WBSPasswordImportedCredential *)v5 password];
              if (WBSIsEqual())
              {
                v11 = [(WBSPasswordImportedCredential *)v5 url];
                if (WBSIsEqual())
                {
                  lineNumberFromSourceFile = self->_lineNumberFromSourceFile;
                  v13 = lineNumberFromSourceFile == [(WBSPasswordImportedCredential *)v5 lineNumberFromSourceFile];
                }

                else
                {
                  v13 = 0;
                }
              }

              else
              {
                v13 = 0;
              }
            }

            else
            {
              v13 = 0;
            }
          }

          else
          {
            v13 = 0;
          }
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_user hash];
  v4 = [(NSString *)self->_password hash]^ v3;
  v5 = [(NSURL *)self->_url hash];
  v6 = v4 ^ v5 ^ [(NSURL *)self->_otpAuthURL hash];
  v7 = [(NSString *)self->_notesEntry hash];
  return v6 ^ v7 ^ [(NSString *)self->_title hash]^ self->_lineNumberFromSourceFile;
}

- (WBSPasswordImportedCredential)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"user"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"password"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"url"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"otp"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"notes"];
  v11 = [coderCopy decodeIntegerForKey:@"lineNumberFromSourceFile"];

  v12 = [(WBSPasswordImportedCredential *)self initWithUser:v5 password:v6 url:v7 otpAuthURL:v8 title:v9 notesEntry:v10 lineNumberFromSourceFile:v11];
  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  user = self->_user;
  coderCopy = coder;
  [coderCopy encodeObject:user forKey:@"user"];
  [coderCopy encodeObject:self->_password forKey:@"password"];
  [coderCopy encodeObject:self->_url forKey:@"url"];
  [coderCopy encodeObject:self->_otpAuthURL forKey:@"otp"];
  [coderCopy encodeObject:self->_notesEntry forKey:@"notes"];
  [coderCopy encodeObject:self->_title forKey:@"title"];
  [coderCopy encodeInt:LODWORD(self->_lineNumberFromSourceFile) forKey:@"lineNumberFromSourceFile"];
}

- (int64_t)compare:(id)compare
{
  lineNumberFromSourceFile = self->_lineNumberFromSourceFile;
  v4 = *(compare + 7);
  v5 = lineNumberFromSourceFile >= v4;
  v6 = lineNumberFromSourceFile > v4;
  if (v5)
  {
    return v6;
  }

  else
  {
    return -1;
  }
}

@end