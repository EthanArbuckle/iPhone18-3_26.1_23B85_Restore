@interface TUMediaTokens
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToMediaTokens:(id)a3;
- (TUMediaTokens)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TUMediaTokens

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  [v3 appendFormat:@" uST=%ld", -[TUMediaTokens uplinkStreamToken](self, "uplinkStreamToken")];
  [v3 appendFormat:@" dST=%ld", -[TUMediaTokens downlinkStreamToken](self, "downlinkStreamToken")];
  [v3 appendFormat:@" cAST=%ld", -[TUMediaTokens combinedAudioStreamToken](self, "combinedAudioStreamToken")];
  v4 = [(TUMediaTokens *)self streamTokensByParticipantID];
  [v3 appendFormat:@" sTPID=%@", v4];

  [v3 appendString:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setUplinkStreamToken:{-[TUMediaTokens uplinkStreamToken](self, "uplinkStreamToken")}];
  [v4 setDownlinkStreamToken:{-[TUMediaTokens downlinkStreamToken](self, "downlinkStreamToken")}];
  [v4 setCombinedAudioStreamToken:{-[TUMediaTokens combinedAudioStreamToken](self, "combinedAudioStreamToken")}];
  v5 = [(TUMediaTokens *)self streamTokensByParticipantID];
  [v4 setStreamTokensByParticipantID:v5];

  return v4;
}

- (TUMediaTokens)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(TUMediaTokens *)self init];
  if (v5)
  {
    v5->_uplinkStreamToken = [v4 decodeIntegerForKey:@"uplinkStreamToken"];
    v5->_downlinkStreamToken = [v4 decodeIntegerForKey:@"downlinkStreamToken"];
    v5->_combinedAudioStreamToken = [v4 decodeIntegerForKey:@"combinedAudioStreamToken"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"streamTokensByParticipantID"];
    streamTokensByParticipantID = v5->_streamTokensByParticipantID;
    v5->_streamTokensByParticipantID = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[TUMediaTokens uplinkStreamToken](self forKey:{"uplinkStreamToken"), @"uplinkStreamToken"}];
  [v4 encodeInteger:-[TUMediaTokens downlinkStreamToken](self forKey:{"downlinkStreamToken"), @"downlinkStreamToken"}];
  [v4 encodeInteger:-[TUMediaTokens combinedAudioStreamToken](self forKey:{"combinedAudioStreamToken"), @"combinedAudioStreamToken"}];
  v5 = [(TUMediaTokens *)self streamTokensByParticipantID];
  [v4 encodeObject:v5 forKey:@"streamTokensByParticipantID"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUMediaTokens *)self isEqualToMediaTokens:v4];
  }

  return v5;
}

- (BOOL)isEqualToMediaTokens:(id)a3
{
  v4 = a3;
  v5 = [(TUMediaTokens *)self uplinkStreamToken];
  if (v5 == [v4 uplinkStreamToken] && (v6 = -[TUMediaTokens downlinkStreamToken](self, "downlinkStreamToken"), v6 == objc_msgSend(v4, "downlinkStreamToken")) && (v7 = -[TUMediaTokens combinedAudioStreamToken](self, "combinedAudioStreamToken"), v7 == objc_msgSend(v4, "combinedAudioStreamToken")))
  {
    v8 = [(TUMediaTokens *)self streamTokensByParticipantID];
    v9 = [v4 streamTokensByParticipantID];
    v10 = v8 == v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end