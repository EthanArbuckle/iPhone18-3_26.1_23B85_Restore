@interface PKSharingMessageExtensionRelayServerMessage
- (NSString)description;
- (NSURL)phoneMailboxURL;
- (NSURL)watchMailboxURL;
- (PKSharingMessageExtensionRelayServerLocalProperties)localProperties;
- (PKSharingMessageExtensionRelayServerMessage)init;
- (id)_initWithCommonMessage:(id)a3 url:(id)a4;
- (id)_messageDataURLWithData:(id)a3;
- (id)_messageDataWithDataURL:(id)a3;
- (id)urlRepresentation;
- (unint64_t)status;
- (void)setLocalProperties:(id)a3;
- (void)setMailboxURLS:(id)a3;
- (void)setStatus:(unint64_t)a3;
@end

@implementation PKSharingMessageExtensionRelayServerMessage

- (PKSharingMessageExtensionRelayServerMessage)init
{
  v8.receiver = self;
  v8.super_class = PKSharingMessageExtensionRelayServerMessage;
  v2 = [(PKSharingMessageExtensionCommonMessage *)&v8 init];
  if (v2)
  {
    v3 = PKSharingUseCommonIMessageExtensionPayloadFormat();
    v4 = PKLogFacilityTypeGetObject();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      if (v5)
      {
        *v7 = 0;
        _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "iMessage Extension: Using common imessage extension payload format.", v7, 2u);
      }

      v2->_useLegacyMessageFormat = 0;
      [(PKSharingMessageExtensionCommonMessage *)v2 setMessageType:@"pkrelayservermessage"];
    }

    else
    {
      if (v5)
      {
        *v7 = 0;
        _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "iMessage Extension: Using legacy imessage extension payload format.", v7, 2u);
      }
    }
  }

  return v2;
}

- (id)_initWithCommonMessage:(id)a3 url:(id)a4
{
  v6 = a4;
  v20.receiver = self;
  v20.super_class = PKSharingMessageExtensionRelayServerMessage;
  v7 = [(PKSharingMessageExtensionCommonMessage *)&v20 _initWithCommonMessage:a3 url:v6];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 messageData];
    if (v9 || ([v8 _messageDataWithDataURL:v6], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v10 = v9;
      v11 = [objc_alloc(MEMORY[0x1E69B90B8]) initWithData:v9];
      v12 = *(v8 + 3);
      *(v8 + 3) = v11;
    }

    else
    {
      v18 = objc_alloc_init(MEMORY[0x1E69B90B8]);
      v19 = *(v8 + 3);
      *(v8 + 3) = v18;

      [*(v8 + 3) setVersion:1];
    }

    v13 = [v8 messageType];
    *(v8 + 32) = v13 == 0;

    if (*(v8 + 32) == 1)
    {
      [v8 setMessageType:@"pkrelayservermessage"];
      v14 = [*(v8 + 3) thumbnailImage];
      [v8 setRawThumbnailData:v14];

      [*(v8 + 3) setThumbnailImage:0];
      v15 = [*(v8 + 3) title];
      [v8 setTitle:v15];

      [*(v8 + 3) setTitle:0];
      v16 = [*(v8 + 3) subtitle];
      [v8 setSubtitle:v16];

      [*(v8 + 3) setSubtitle:0];
    }
  }

  return v8;
}

- (id)urlRepresentation
{
  overrideURL = self->_overrideURL;
  if (overrideURL)
  {
    v3 = overrideURL;
  }

  else
  {
    useLegacyMessageFormat = self->_useLegacyMessageFormat;
    message = self->_message;
    if (useLegacyMessageFormat)
    {
      v7 = [(PKProtobufRelaySharingMessage *)message copy];
      v8 = [(PKSharingMessageExtensionCommonMessage *)self rawThumbnailData];
      [v7 setThumbnailImage:v8];

      v9 = [(PKSharingMessageExtensionCommonMessage *)self title];
      [v7 setTitle:v9];

      v10 = [(PKSharingMessageExtensionCommonMessage *)self subtitle];
      [v7 setSubtitle:v10];

      v11 = [v7 data];
      v12 = [(PKSharingMessageExtensionRelayServerMessage *)self _messageDataURLWithData:v11];

      goto LABEL_7;
    }

    v13 = [(PKProtobufRelaySharingMessage *)message data];
    [(PKSharingMessageExtensionCommonMessage *)self setMessageData:v13];

    v15.receiver = self;
    v15.super_class = PKSharingMessageExtensionRelayServerMessage;
    v3 = [(PKSharingMessageExtensionCommonMessage *)&v15 urlRepresentation];
  }

  v12 = v3;
LABEL_7:

  return v12;
}

- (unint64_t)status
{
  v2 = [(PKProtobufRelaySharingMessage *)self->_message status];
  v3 = PKShareStatusFromString();

  return v3;
}

- (void)setStatus:(unint64_t)a3
{
  message = self->_message;
  v4 = PKShareStatusToString();
  [(PKProtobufRelaySharingMessage *)message setStatus:v4];
}

- (NSURL)phoneMailboxURL
{
  if ([(PKProtobufRelaySharingMessage *)self->_message mailboxURLsCount])
  {
    v3 = MEMORY[0x1E695DFF8];
    v4 = [(PKProtobufRelaySharingMessage *)self->_message mailboxURLsAtIndex:0];
    v5 = [v3 URLWithString:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSURL)watchMailboxURL
{
  if ([(PKProtobufRelaySharingMessage *)self->_message mailboxURLsCount]< 2)
  {
    v5 = 0;
  }

  else
  {
    v3 = MEMORY[0x1E695DFF8];
    v4 = [(PKProtobufRelaySharingMessage *)self->_message mailboxURLsAtIndex:1];
    v5 = [v3 URLWithString:v4];
  }

  return v5;
}

- (void)setMailboxURLS:(id)a3
{
  message = self->_message;
  v5 = [a3 pk_arrayByApplyingBlock:&__block_literal_global_225];
  v4 = [v5 mutableCopy];
  [(PKProtobufRelaySharingMessage *)message setMailboxURLs:v4];
}

- (PKSharingMessageExtensionRelayServerLocalProperties)localProperties
{
  v2 = [(PKProtobufRelaySharingMessage *)self->_message localData];
  if (v2)
  {
    v3 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v2 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setLocalProperties:(id)a3
{
  if (a3)
  {
    v4 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:0];
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [(PKProtobufRelaySharingMessage *)self->_message setLocalData:v4];
}

- (id)_messageDataURLWithData:(id)a3
{
  if (a3)
  {
    v3 = [a3 base64EncodedStringWithOptions:0];
    if (v3)
    {
      v4 = [@"data:application/vnd.apple.pkrelayservermessagebase64 "];;
      v5 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v4];
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

  return v5;
}

- (id)_messageDataWithDataURL:(id)a3
{
  if (!a3)
  {
    v7 = 0;
    goto LABEL_10;
  }

  v3 = a3;
  v4 = [v3 absoluteString];
  v5 = [v3 scheme];

  if ([v5 isEqualToString:@"data"])
  {
    v6 = [v4 hasPrefix:{@"data:application/vnd.apple.pkrelayservermessage;base64, "}];

    if (!v6)
    {
      v7 = 0;
      goto LABEL_9;
    }

    v5 = [v4 substringFromIndex:{objc_msgSend(@"data:application/vnd.apple.pkrelayservermessagebase64, ", "length")}];;
    v7 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v5 options:1];
  }

  else
  {
    v7 = 0;
  }

LABEL_9:
LABEL_10:

  return v7;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p ", v5, self];;

  v7 = [(PKSharingMessageExtensionCommonMessage *)self title];
  [v6 appendFormat:@"title: '%@'; ", v7];

  v8 = [(PKSharingMessageExtensionCommonMessage *)self subtitle];
  [v6 appendFormat:@"subtitle: '%@'; ", v8];

  [(PKSharingMessageExtensionRelayServerMessage *)self status];
  v9 = PKShareStatusToString();
  [v6 appendFormat:@"status: '%@'; ", v9];

  v10 = [(PKSharingMessageExtensionRelayServerMessage *)self localProperties];
  [v6 appendFormat:@"localProperties: '%@'; ", v10];

  [v6 appendFormat:@">"];
  v11 = [MEMORY[0x1E696AEC0] stringWithString:v6];

  return v11;
}

@end