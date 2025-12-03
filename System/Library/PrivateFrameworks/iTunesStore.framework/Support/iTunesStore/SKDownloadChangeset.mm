@interface SKDownloadChangeset
+ (id)changesetWithDownloadID:(id)d state:(int64_t)state;
- (SKDownloadChangeset)initWithXPCEncoding:(id)encoding;
- (id)copyWithZone:(_NSZone *)zone;
- (id)copyXPCEncoding;
@end

@implementation SKDownloadChangeset

+ (id)changesetWithDownloadID:(id)d state:(int64_t)state
{
  dCopy = d;
  v6 = objc_alloc_init(SKDownloadChangeset);
  [(SKDownloadChangeset *)v6 setDownloadID:dCopy];

  v7 = [NSNumber numberWithInteger:state];
  [(SKDownloadChangeset *)v6 setDownloadState:v7];

  return v6;
}

- (SKDownloadChangeset)initWithXPCEncoding:(id)encoding
{
  encodingCopy = encoding;
  v5 = encodingCopy;
  if (encodingCopy && xpc_get_type(encodingCopy) == &_xpc_type_dictionary)
  {
    v25.receiver = self;
    v25.super_class = SKDownloadChangeset;
    v6 = [(SKDownloadChangeset *)&v25 init];
    if (v6)
    {
      objc_opt_class();
      v8 = sub_10018E3FC(v5, "1");
      v9 = v8;
      if (v8)
      {
        v8 = [[NSURL alloc] initWithString:v8];
      }

      contentURL = v6->_contentURL;
      v6->_contentURL = v8;

      objc_opt_class();
      v11 = sub_10018E3FC(v5, "4");
      v12 = v11;
      if (v11)
      {
        v13 = sub_10018DAD8(v11);
        error = v6->_error;
        v6->_error = v13;
      }

      objc_opt_class();
      v15 = sub_10018E3FC(v5, "0");
      contentLength = v6->_contentLength;
      v6->_contentLength = v15;

      objc_opt_class();
      v17 = sub_10018E3FC(v5, "2");
      downloadID = v6->_downloadID;
      v6->_downloadID = v17;

      objc_opt_class();
      v19 = sub_10018E3FC(v5, "3");
      downloadState = v6->_downloadState;
      v6->_downloadState = v19;

      objc_opt_class();
      v21 = sub_10018E3FC(v5, "5");
      progress = v6->_progress;
      v6->_progress = v21;

      objc_opt_class();
      v23 = sub_10018E3FC(v5, "6");
      timeRemaining = v6->_timeRemaining;
      v6->_timeRemaining = v23;
    }
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  sub_10018E448(v3, "0", self->_contentLength);
  sub_10018E448(v3, "1", [(NSURL *)self->_contentURL absoluteString]);
  sub_10018E448(v3, "2", self->_downloadID);
  sub_10018E448(v3, "3", self->_downloadState);
  v4 = sub_10018D55C(self->_error);
  sub_10018E448(v3, "4", v4);
  sub_10018E448(v3, "5", self->_progress);
  sub_10018E448(v3, "6", self->_timeRemaining);
  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSNumber *)self->_contentLength copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSURL *)self->_contentURL copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSNumber *)self->_downloadID copyWithZone:zone];
  v11 = v5[3];
  v5[3] = v10;

  v12 = [(NSNumber *)self->_downloadState copyWithZone:zone];
  v13 = v5[4];
  v5[4] = v12;

  v14 = [(NSError *)self->_error copyWithZone:zone];
  v15 = v5[5];
  v5[5] = v14;

  v16 = [(NSNumber *)self->_progress copyWithZone:zone];
  v17 = v5[6];
  v5[6] = v16;

  v18 = [(NSNumber *)self->_timeRemaining copyWithZone:zone];
  v19 = v5[7];
  v5[7] = v18;

  return v5;
}

@end