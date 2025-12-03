@interface SBDisplayArrangementItem
+ (id)_preferredArrangementOfExternalDisplay:(id)display relativeToEmbeddedDisplay:(id)embeddedDisplay preferences:(id)preferences;
+ (id)preferredArrangementOfDisplay:(id)display relativeTo:(id)to preferences:(id)preferences;
- (BOOL)isEqual:(id)equal;
- (SBDisplayArrangementItem)initWithDisplayIdentity:(id)identity relativeDisplayIdentity:(id)displayIdentity edge:(unsigned int)edge offset:(double)offset;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)formatter;
@end

@implementation SBDisplayArrangementItem

- (SBDisplayArrangementItem)initWithDisplayIdentity:(id)identity relativeDisplayIdentity:(id)displayIdentity edge:(unsigned int)edge offset:(double)offset
{
  identityCopy = identity;
  displayIdentityCopy = displayIdentity;
  v13 = displayIdentityCopy;
  if (identityCopy)
  {
    if (displayIdentityCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SBDisplayArrangementItem initWithDisplayIdentity:relativeDisplayIdentity:edge:offset:];
    if (v13)
    {
      goto LABEL_3;
    }
  }

  [SBDisplayArrangementItem initWithDisplayIdentity:relativeDisplayIdentity:edge:offset:];
LABEL_3:
  v17.receiver = self;
  v17.super_class = SBDisplayArrangementItem;
  v14 = [(SBDisplayArrangementItem *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_displayIdentity, identity);
    objc_storeStrong(&v15->_relativeDisplayIdentity, displayIdentity);
    v15->_edge = edge;
    v15->_offset = offset;
  }

  return v15;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [equalCopy isMemberOfClass:objc_opt_class()] && -[FBSDisplayIdentity isEqual:](self->_displayIdentity, "isEqual:", *(equalCopy + 2)) && -[FBSDisplayIdentity isEqual:](self->_relativeDisplayIdentity, "isEqual:", *(equalCopy + 3)) && self->_edge == *(equalCopy + 2) && self->_offset == *(equalCopy + 4);

  return v5;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = [builder appendObject:self->_displayIdentity];
  v5 = [builder appendObject:self->_relativeDisplayIdentity];
  v6 = [builder appendUnsignedInteger:self->_edge];
  v7 = [builder appendCGFloat:self->_offset];
  v8 = [builder hash];

  return v8;
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __57__SBDisplayArrangementItem_appendDescriptionToFormatter___block_invoke;
  v3[3] = &unk_2783BA490;
  v3[4] = self;
  [formatter appendCustomFormatWithName:@"layout" block:v3];
}

uint64_t __57__SBDisplayArrangementItem_appendDescriptionToFormatter___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  v4 = *(v2 + 16);
  v5 = *(v2 + 8);
  if (v3 == 0.0)
  {
    if (v5 > 3)
    {
      v7 = @"EAST";
    }

    else
    {
      v7 = off_2783BA4B0[v5];
    }

    return [a2 appendFormat:@"[%@] is to the %@ of [%@]", v4, v7, *(*(a1 + 32) + 24), v9];
  }

  else
  {
    if (v5 > 3)
    {
      v6 = @"EAST";
    }

    else
    {
      v6 = off_2783BA4B0[v5];
    }

    return [a2 appendFormat:@"[%@] is %lu pts to the %@ of [%@]", v4, *&v3, v6, *(*(a1 + 32) + 24)];
  }
}

+ (id)_preferredArrangementOfExternalDisplay:(id)display relativeToEmbeddedDisplay:(id)embeddedDisplay preferences:(id)preferences
{
  displayCopy = display;
  embeddedDisplayCopy = embeddedDisplay;
  preferencesCopy = preferences;
  if (!displayCopy)
  {
    +[SBDisplayArrangementItem(PreferredArrangement) _preferredArrangementOfExternalDisplay:relativeToEmbeddedDisplay:preferences:];
  }

  if ([displayCopy sb_displayWindowingMode] == 1)
  {
    v10 = [SBDisplayArrangementItem alloc];
    arrangementEdge = [preferencesCopy arrangementEdge];
    [preferencesCopy arrangementOffset];
    v12 = [(SBDisplayArrangementItem *)v10 initWithDisplayIdentity:displayCopy relativeDisplayIdentity:embeddedDisplayCopy edge:arrangementEdge offset:?];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)preferredArrangementOfDisplay:(id)display relativeTo:(id)to preferences:(id)preferences
{
  displayCopy = display;
  toCopy = to;
  preferencesCopy = preferences;
  if (!displayCopy)
  {
    +[SBDisplayArrangementItem(PreferredArrangement) preferredArrangementOfDisplay:relativeTo:preferences:];
    if (toCopy)
    {
      goto LABEL_3;
    }

LABEL_17:
    +[SBDisplayArrangementItem(PreferredArrangement) preferredArrangementOfDisplay:relativeTo:preferences:];
    goto LABEL_3;
  }

  if (!toCopy)
  {
    goto LABEL_17;
  }

LABEL_3:
  if ([displayCopy sb_displayWindowingMode] == 1 && objc_msgSend(toCopy, "sb_displayWindowingMode") == 1)
  {
    if ([toCopy isMainDisplay])
    {
      v10 = [SBDisplayArrangementItem _preferredArrangementOfExternalDisplay:displayCopy relativeToEmbeddedDisplay:toCopy preferences:preferencesCopy];
      goto LABEL_11;
    }

    if ([displayCopy isMainDisplay])
    {
      v11 = [SBDisplayArrangementItem _preferredArrangementOfExternalDisplay:toCopy relativeToEmbeddedDisplay:displayCopy preferences:preferencesCopy];
      edge = [v11 edge];
      if (edge > 3)
      {
        v13 = 0;
      }

      else
      {
        v13 = dword_21F8A7390[edge];
      }

      [v11 offset];
      v10 = [[SBDisplayArrangementItem alloc] initWithDisplayIdentity:displayCopy relativeDisplayIdentity:toCopy edge:v13 offset:-v15];

      goto LABEL_11;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (void)initWithDisplayIdentity:relativeDisplayIdentity:edge:offset:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"displayIdentity" object:? file:? lineNumber:? description:?];
}

- (void)initWithDisplayIdentity:relativeDisplayIdentity:edge:offset:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"relativeDisplayIdentity" object:? file:? lineNumber:? description:?];
}

@end