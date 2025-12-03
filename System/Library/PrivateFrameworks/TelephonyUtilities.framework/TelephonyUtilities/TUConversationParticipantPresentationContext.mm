@interface TUConversationParticipantPresentationContext
- (CGRect)spatialPosition;
- (TUConversationParticipantPresentationContext)initWithCoder:(id)coder;
- (TUConversationParticipantPresentationContext)initWithParticipantIdentifier:(unint64_t)identifier videoQuality:(unint64_t)quality visibility:(id)visibility prominence:(id)prominence spatialPosition:(CGRect)position isInCanvas:(BOOL)canvas;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TUConversationParticipantPresentationContext

- (TUConversationParticipantPresentationContext)initWithParticipantIdentifier:(unint64_t)identifier videoQuality:(unint64_t)quality visibility:(id)visibility prominence:(id)prominence spatialPosition:(CGRect)position isInCanvas:(BOOL)canvas
{
  height = position.size.height;
  width = position.size.width;
  y = position.origin.y;
  x = position.origin.x;
  v18.receiver = self;
  v18.super_class = TUConversationParticipantPresentationContext;
  result = [(TUConversationParticipantPresentationContext *)&v18 init];
  if (result)
  {
    result->_participantIdentifier = identifier;
    result->_videoQuality = quality;
    result->_visibility = visibility;
    result->_prominence = prominence;
    result->_spatialPosition.origin.x = x;
    result->_spatialPosition.origin.y = y;
    result->_spatialPosition.size.width = width;
    result->_spatialPosition.size.height = height;
    result->_isInCanvas = canvas;
  }

  return result;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  [v3 appendFormat:@" participantIdentifer=%llu", -[TUConversationParticipantPresentationContext participantIdentifier](self, "participantIdentifier")];
  [v3 appendFormat:@" videoQuality=%lu", -[TUConversationParticipantPresentationContext videoQuality](self, "videoQuality")];
  visibility = [(TUConversationParticipantPresentationContext *)self visibility];
  [v3 appendFormat:@" visibility=%lu", objc_msgSend(visibility, "integerValue")];

  prominence = [(TUConversationParticipantPresentationContext *)self prominence];
  [v3 appendFormat:@" prominence=%lu", objc_msgSend(prominence, "integerValue")];

  [(TUConversationParticipantPresentationContext *)self spatialPosition];
  v7 = v6;
  [(TUConversationParticipantPresentationContext *)self spatialPosition];
  v9 = v8;
  [(TUConversationParticipantPresentationContext *)self spatialPosition];
  v11 = v10;
  [(TUConversationParticipantPresentationContext *)self spatialPosition];
  [v3 appendFormat:@" spatialPosition=(%f, %f, %f, %f)", v7, v9, v11, v12];
  [v3 appendFormat:@" isInCanvas=%d", -[TUConversationParticipantPresentationContext isInCanvas](self, "isInCanvas")];
  [v3 appendString:@">"];
  v13 = [v3 copy];

  return v13;
}

- (TUConversationParticipantPresentationContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_participantIdentifier);
  v6 = [coderCopy decodeInt64ForKey:v5];

  v7 = NSStringFromSelector(sel_videoQuality);
  v8 = [coderCopy decodeIntegerForKey:v7];

  v9 = NSStringFromSelector(sel_visibility);
  v10 = [coderCopy decodeObjectForKey:v9];

  v11 = NSStringFromSelector(sel_prominence);
  v12 = [coderCopy decodeObjectForKey:v11];

  v13 = NSStringFromSelector(sel_spatialPosition);
  [coderCopy decodeRectForKey:v13];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = NSStringFromSelector(sel_isInCanvas);
  v23 = [coderCopy decodeBoolForKey:v22];

  v24 = [(TUConversationParticipantPresentationContext *)self initWithParticipantIdentifier:v6 videoQuality:v8 visibility:v10 prominence:v12 spatialPosition:v23 isInCanvas:v15, v17, v19, v21];
  return v24;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  participantIdentifier = [(TUConversationParticipantPresentationContext *)self participantIdentifier];
  v6 = NSStringFromSelector(sel_participantIdentifier);
  [coderCopy encodeInt64:participantIdentifier forKey:v6];

  videoQuality = [(TUConversationParticipantPresentationContext *)self videoQuality];
  v8 = NSStringFromSelector(sel_videoQuality);
  [coderCopy encodeInteger:videoQuality forKey:v8];

  visibility = [(TUConversationParticipantPresentationContext *)self visibility];
  v10 = NSStringFromSelector(sel_visibility);
  [coderCopy encodeObject:visibility forKey:v10];

  prominence = [(TUConversationParticipantPresentationContext *)self prominence];
  v12 = NSStringFromSelector(sel_prominence);
  [coderCopy encodeObject:prominence forKey:v12];

  [(TUConversationParticipantPresentationContext *)self spatialPosition];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = NSStringFromSelector(sel_spatialPosition);
  [coderCopy encodeRect:v21 forKey:{v14, v16, v18, v20}];

  isInCanvas = [(TUConversationParticipantPresentationContext *)self isInCanvas];
  v23 = NSStringFromSelector(sel_isInCanvas);
  [coderCopy encodeBool:isInCanvas forKey:v23];
}

- (CGRect)spatialPosition
{
  x = self->_spatialPosition.origin.x;
  y = self->_spatialPosition.origin.y;
  width = self->_spatialPosition.size.width;
  height = self->_spatialPosition.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end