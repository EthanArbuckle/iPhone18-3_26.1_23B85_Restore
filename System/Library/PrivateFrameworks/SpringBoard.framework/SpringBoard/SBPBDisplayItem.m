@interface SBPBDisplayItem
- (BOOL)hasSceneIdentifier;
- (BOOL)hasWebClipIdentifier;
- (BOOL)isEqual:(id)a3;
- (__CFString)typeAsString:(__CFString *)a1;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (uint64_t)StringAsType:(uint64_t)a1;
- (uint64_t)bundleIdentifier;
- (uint64_t)sceneIdentifier;
- (uint64_t)setType:(uint64_t)result;
- (uint64_t)type;
- (uint64_t)webClipIdentifier;
- (unint64_t)hash;
- (void)copyTo:(uint64_t)a1;
- (void)mergeFrom:(uint64_t)a1;
- (void)setBundleIdentifier:(uint64_t)a1;
- (void)setSceneIdentifier:(uint64_t)a1;
- (void)setWebClipIdentifier:(uint64_t)a1;
- (void)writeTo:(id)a3;
@end

@implementation SBPBDisplayItem

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SBPBDisplayItem;
  v4 = [(SBPBDisplayItem *)&v8 description];
  v5 = [(SBPBDisplayItem *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  type = self->_type;
  if (type >= 6)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_type];
  }

  else
  {
    v5 = off_2783B5908[type];
  }

  [v3 setObject:v5 forKey:@"type"];

  bundleIdentifier = self->_bundleIdentifier;
  if (bundleIdentifier)
  {
    [v3 setObject:bundleIdentifier forKey:@"bundleIdentifier"];
  }

  sceneIdentifier = self->_sceneIdentifier;
  if (sceneIdentifier)
  {
    [v3 setObject:sceneIdentifier forKey:@"sceneIdentifier"];
  }

  webClipIdentifier = self->_webClipIdentifier;
  if (webClipIdentifier)
  {
    [v3 setObject:webClipIdentifier forKey:@"webClipIdentifier"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  PBDataWriterWriteInt32Field();
  if (!self->_bundleIdentifier)
  {
    [SBPBDisplayItem writeTo:];
  }

  PBDataWriterWriteStringField();
  if (self->_sceneIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_webClipIdentifier)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v5 + 24) = self->_type;
  v6 = [(NSString *)self->_bundleIdentifier copyWithZone:a3];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  v8 = [(NSString *)self->_sceneIdentifier copyWithZone:a3];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  v10 = [(NSString *)self->_webClipIdentifier copyWithZone:a3];
  v11 = *(v5 + 32);
  *(v5 + 32) = v10;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && self->_type == *(v4 + 6) && ((bundleIdentifier = self->_bundleIdentifier, !(bundleIdentifier | v4[1])) || -[NSString isEqual:](bundleIdentifier, "isEqual:")) && ((sceneIdentifier = self->_sceneIdentifier, !(sceneIdentifier | v4[2])) || -[NSString isEqual:](sceneIdentifier, "isEqual:")))
  {
    webClipIdentifier = self->_webClipIdentifier;
    if (webClipIdentifier | v4[4])
    {
      v8 = [(NSString *)webClipIdentifier isEqual:?];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = 2654435761 * self->_type;
  v4 = [(NSString *)self->_bundleIdentifier hash];
  v5 = v4 ^ [(NSString *)self->_sceneIdentifier hash];
  return v5 ^ [(NSString *)self->_webClipIdentifier hash]^ v3;
}

- (__CFString)typeAsString:(__CFString *)a1
{
  if (!a1)
  {
LABEL_4:

    return a1;
  }

  if (a2 < 6)
  {
    a1 = off_2783B5908[a2];
    goto LABEL_4;
  }

  a1 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", a2];

  return a1;
}

- (uint64_t)StringAsType:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = v3;
    if ([v5 isEqualToString:@"App"])
    {
      v6 = 0;
    }

    else if ([v5 isEqualToString:@"HomeScreen"])
    {
      v6 = 1;
    }

    else if ([v5 isEqualToString:@"RemoteAlert"])
    {
      v6 = 2;
    }

    else if ([v5 isEqualToString:@"SwitcherService"])
    {
      v6 = 3;
    }

    else if ([v5 isEqualToString:@"ContinuityApp"])
    {
      v6 = 4;
    }

    else if ([v5 isEqualToString:@"WebApp"])
    {
      v6 = 5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)hasSceneIdentifier
{
  if (result)
  {
    return *(result + 16) != 0;
  }

  return result;
}

- (BOOL)hasWebClipIdentifier
{
  if (result)
  {
    return *(result + 32) != 0;
  }

  return result;
}

- (void)copyTo:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v3[6] = *(a1 + 24);
    v6 = v3;
    [(SBPBDisplayItem *)v3 setBundleIdentifier:?];
    v4 = *(a1 + 16);
    if (v4)
    {
      [(SBPBDisplayItem *)v6 setSceneIdentifier:v4];
    }

    v5 = *(a1 + 32);
    v3 = v6;
    if (v5)
    {
      [(SBPBDisplayItem *)v6 setWebClipIdentifier:v5];
      v3 = v6;
    }
  }
}

- (void)setBundleIdentifier:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_18(a1, a2, 8);
  }
}

- (void)setSceneIdentifier:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_18(a1, a2, 16);
  }
}

- (void)setWebClipIdentifier:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_18(a1, a2, 32);
  }
}

- (void)mergeFrom:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    *(a1 + 24) = v3[6];
    v4 = *(v3 + 1);
    v7 = v3;
    if (v4)
    {
      objc_storeStrong((a1 + 8), v4);
      v3 = v7;
    }

    v5 = *(v3 + 2);
    if (v5)
    {
      objc_storeStrong((a1 + 16), v5);
      v3 = v7;
    }

    v6 = *(v3 + 4);
    if (v6)
    {
      objc_storeStrong((a1 + 32), v6);
      v3 = v7;
    }
  }
}

- (uint64_t)type
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

- (uint64_t)setType:(uint64_t)result
{
  if (result)
  {
    *(result + 24) = a2;
  }

  return result;
}

- (uint64_t)bundleIdentifier
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

- (uint64_t)sceneIdentifier
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

- (uint64_t)webClipIdentifier
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

@end