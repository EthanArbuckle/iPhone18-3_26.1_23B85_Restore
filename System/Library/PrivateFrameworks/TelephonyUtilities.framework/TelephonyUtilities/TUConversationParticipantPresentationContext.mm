@interface TUConversationParticipantPresentationContext
- (CGRect)spatialPosition;
- (TUConversationParticipantPresentationContext)initWithCoder:(id)a3;
- (TUConversationParticipantPresentationContext)initWithParticipantIdentifier:(unint64_t)a3 videoQuality:(unint64_t)a4 visibility:(id)a5 prominence:(id)a6 spatialPosition:(CGRect)a7 isInCanvas:(BOOL)a8;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TUConversationParticipantPresentationContext

- (TUConversationParticipantPresentationContext)initWithParticipantIdentifier:(unint64_t)a3 videoQuality:(unint64_t)a4 visibility:(id)a5 prominence:(id)a6 spatialPosition:(CGRect)a7 isInCanvas:(BOOL)a8
{
  height = a7.size.height;
  width = a7.size.width;
  y = a7.origin.y;
  x = a7.origin.x;
  v18.receiver = self;
  v18.super_class = TUConversationParticipantPresentationContext;
  result = [(TUConversationParticipantPresentationContext *)&v18 init];
  if (result)
  {
    result->_participantIdentifier = a3;
    result->_videoQuality = a4;
    result->_visibility = a5;
    result->_prominence = a6;
    result->_spatialPosition.origin.x = x;
    result->_spatialPosition.origin.y = y;
    result->_spatialPosition.size.width = width;
    result->_spatialPosition.size.height = height;
    result->_isInCanvas = a8;
  }

  return result;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  [v3 appendFormat:@" participantIdentifer=%llu", -[TUConversationParticipantPresentationContext participantIdentifier](self, "participantIdentifier")];
  [v3 appendFormat:@" videoQuality=%lu", -[TUConversationParticipantPresentationContext videoQuality](self, "videoQuality")];
  v4 = [(TUConversationParticipantPresentationContext *)self visibility];
  [v3 appendFormat:@" visibility=%lu", objc_msgSend(v4, "integerValue")];

  v5 = [(TUConversationParticipantPresentationContext *)self prominence];
  [v3 appendFormat:@" prominence=%lu", objc_msgSend(v5, "integerValue")];

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

- (TUConversationParticipantPresentationContext)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_participantIdentifier);
  v6 = [v4 decodeInt64ForKey:v5];

  v7 = NSStringFromSelector(sel_videoQuality);
  v8 = [v4 decodeIntegerForKey:v7];

  v9 = NSStringFromSelector(sel_visibility);
  v10 = [v4 decodeObjectForKey:v9];

  v11 = NSStringFromSelector(sel_prominence);
  v12 = [v4 decodeObjectForKey:v11];

  v13 = NSStringFromSelector(sel_spatialPosition);
  [v4 decodeRectForKey:v13];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = NSStringFromSelector(sel_isInCanvas);
  v23 = [v4 decodeBoolForKey:v22];

  v24 = [(TUConversationParticipantPresentationContext *)self initWithParticipantIdentifier:v6 videoQuality:v8 visibility:v10 prominence:v12 spatialPosition:v23 isInCanvas:v15, v17, v19, v21];
  return v24;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(TUConversationParticipantPresentationContext *)self participantIdentifier];
  v6 = NSStringFromSelector(sel_participantIdentifier);
  [v4 encodeInt64:v5 forKey:v6];

  v7 = [(TUConversationParticipantPresentationContext *)self videoQuality];
  v8 = NSStringFromSelector(sel_videoQuality);
  [v4 encodeInteger:v7 forKey:v8];

  v9 = [(TUConversationParticipantPresentationContext *)self visibility];
  v10 = NSStringFromSelector(sel_visibility);
  [v4 encodeObject:v9 forKey:v10];

  v11 = [(TUConversationParticipantPresentationContext *)self prominence];
  v12 = NSStringFromSelector(sel_prominence);
  [v4 encodeObject:v11 forKey:v12];

  [(TUConversationParticipantPresentationContext *)self spatialPosition];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = NSStringFromSelector(sel_spatialPosition);
  [v4 encodeRect:v21 forKey:{v14, v16, v18, v20}];

  v22 = [(TUConversationParticipantPresentationContext *)self isInCanvas];
  v23 = NSStringFromSelector(sel_isInCanvas);
  [v4 encodeBool:v22 forKey:v23];
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