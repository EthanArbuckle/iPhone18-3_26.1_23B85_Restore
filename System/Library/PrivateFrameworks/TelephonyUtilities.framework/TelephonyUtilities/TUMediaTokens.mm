@interface TUMediaTokens
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToMediaTokens:(id)tokens;
- (TUMediaTokens)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TUMediaTokens

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  [v3 appendFormat:@" uST=%ld", -[TUMediaTokens uplinkStreamToken](self, "uplinkStreamToken")];
  [v3 appendFormat:@" dST=%ld", -[TUMediaTokens downlinkStreamToken](self, "downlinkStreamToken")];
  [v3 appendFormat:@" cAST=%ld", -[TUMediaTokens combinedAudioStreamToken](self, "combinedAudioStreamToken")];
  streamTokensByParticipantID = [(TUMediaTokens *)self streamTokensByParticipantID];
  [v3 appendFormat:@" sTPID=%@", streamTokensByParticipantID];

  [v3 appendString:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setUplinkStreamToken:{-[TUMediaTokens uplinkStreamToken](self, "uplinkStreamToken")}];
  [v4 setDownlinkStreamToken:{-[TUMediaTokens downlinkStreamToken](self, "downlinkStreamToken")}];
  [v4 setCombinedAudioStreamToken:{-[TUMediaTokens combinedAudioStreamToken](self, "combinedAudioStreamToken")}];
  streamTokensByParticipantID = [(TUMediaTokens *)self streamTokensByParticipantID];
  [v4 setStreamTokensByParticipantID:streamTokensByParticipantID];

  return v4;
}

- (TUMediaTokens)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(TUMediaTokens *)self init];
  if (v5)
  {
    v5->_uplinkStreamToken = [coderCopy decodeIntegerForKey:@"uplinkStreamToken"];
    v5->_downlinkStreamToken = [coderCopy decodeIntegerForKey:@"downlinkStreamToken"];
    v5->_combinedAudioStreamToken = [coderCopy decodeIntegerForKey:@"combinedAudioStreamToken"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"streamTokensByParticipantID"];
    streamTokensByParticipantID = v5->_streamTokensByParticipantID;
    v5->_streamTokensByParticipantID = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[TUMediaTokens uplinkStreamToken](self forKey:{"uplinkStreamToken"), @"uplinkStreamToken"}];
  [coderCopy encodeInteger:-[TUMediaTokens downlinkStreamToken](self forKey:{"downlinkStreamToken"), @"downlinkStreamToken"}];
  [coderCopy encodeInteger:-[TUMediaTokens combinedAudioStreamToken](self forKey:{"combinedAudioStreamToken"), @"combinedAudioStreamToken"}];
  streamTokensByParticipantID = [(TUMediaTokens *)self streamTokensByParticipantID];
  [coderCopy encodeObject:streamTokensByParticipantID forKey:@"streamTokensByParticipantID"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUMediaTokens *)self isEqualToMediaTokens:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToMediaTokens:(id)tokens
{
  tokensCopy = tokens;
  uplinkStreamToken = [(TUMediaTokens *)self uplinkStreamToken];
  if (uplinkStreamToken == [tokensCopy uplinkStreamToken] && (v6 = -[TUMediaTokens downlinkStreamToken](self, "downlinkStreamToken"), v6 == objc_msgSend(tokensCopy, "downlinkStreamToken")) && (v7 = -[TUMediaTokens combinedAudioStreamToken](self, "combinedAudioStreamToken"), v7 == objc_msgSend(tokensCopy, "combinedAudioStreamToken")))
  {
    streamTokensByParticipantID = [(TUMediaTokens *)self streamTokensByParticipantID];
    streamTokensByParticipantID2 = [tokensCopy streamTokensByParticipantID];
    v10 = streamTokensByParticipantID == streamTokensByParticipantID2;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end