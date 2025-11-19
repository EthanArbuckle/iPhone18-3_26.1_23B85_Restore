@interface SBDisplayArrangementItem
+ (id)_preferredArrangementOfExternalDisplay:(id)a3 relativeToEmbeddedDisplay:(id)a4 preferences:(id)a5;
+ (id)preferredArrangementOfDisplay:(id)a3 relativeTo:(id)a4 preferences:(id)a5;
- (BOOL)isEqual:(id)a3;
- (SBDisplayArrangementItem)initWithDisplayIdentity:(id)a3 relativeDisplayIdentity:(id)a4 edge:(unsigned int)a5 offset:(double)a6;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)a3;
@end

@implementation SBDisplayArrangementItem

- (SBDisplayArrangementItem)initWithDisplayIdentity:(id)a3 relativeDisplayIdentity:(id)a4 edge:(unsigned int)a5 offset:(double)a6
{
  v11 = a3;
  v12 = a4;
  v13 = v12;
  if (v11)
  {
    if (v12)
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
    objc_storeStrong(&v14->_displayIdentity, a3);
    objc_storeStrong(&v15->_relativeDisplayIdentity, a4);
    v15->_edge = a5;
    v15->_offset = a6;
  }

  return v15;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [v4 isMemberOfClass:objc_opt_class()] && -[FBSDisplayIdentity isEqual:](self->_displayIdentity, "isEqual:", *(v4 + 2)) && -[FBSDisplayIdentity isEqual:](self->_relativeDisplayIdentity, "isEqual:", *(v4 + 3)) && self->_edge == *(v4 + 2) && self->_offset == *(v4 + 4);

  return v5;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CF0C40] builder];
  v4 = [v3 appendObject:self->_displayIdentity];
  v5 = [v3 appendObject:self->_relativeDisplayIdentity];
  v6 = [v3 appendUnsignedInteger:self->_edge];
  v7 = [v3 appendCGFloat:self->_offset];
  v8 = [v3 hash];

  return v8;
}

- (void)appendDescriptionToFormatter:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __57__SBDisplayArrangementItem_appendDescriptionToFormatter___block_invoke;
  v3[3] = &unk_2783BA490;
  v3[4] = self;
  [a3 appendCustomFormatWithName:@"layout" block:v3];
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

+ (id)_preferredArrangementOfExternalDisplay:(id)a3 relativeToEmbeddedDisplay:(id)a4 preferences:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (!v7)
  {
    +[SBDisplayArrangementItem(PreferredArrangement) _preferredArrangementOfExternalDisplay:relativeToEmbeddedDisplay:preferences:];
  }

  if ([v7 sb_displayWindowingMode] == 1)
  {
    v10 = [SBDisplayArrangementItem alloc];
    v11 = [v9 arrangementEdge];
    [v9 arrangementOffset];
    v12 = [(SBDisplayArrangementItem *)v10 initWithDisplayIdentity:v7 relativeDisplayIdentity:v8 edge:v11 offset:?];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)preferredArrangementOfDisplay:(id)a3 relativeTo:(id)a4 preferences:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (!v7)
  {
    +[SBDisplayArrangementItem(PreferredArrangement) preferredArrangementOfDisplay:relativeTo:preferences:];
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_17:
    +[SBDisplayArrangementItem(PreferredArrangement) preferredArrangementOfDisplay:relativeTo:preferences:];
    goto LABEL_3;
  }

  if (!v8)
  {
    goto LABEL_17;
  }

LABEL_3:
  if ([v7 sb_displayWindowingMode] == 1 && objc_msgSend(v8, "sb_displayWindowingMode") == 1)
  {
    if ([v8 isMainDisplay])
    {
      v10 = [SBDisplayArrangementItem _preferredArrangementOfExternalDisplay:v7 relativeToEmbeddedDisplay:v8 preferences:v9];
      goto LABEL_11;
    }

    if ([v7 isMainDisplay])
    {
      v11 = [SBDisplayArrangementItem _preferredArrangementOfExternalDisplay:v8 relativeToEmbeddedDisplay:v7 preferences:v9];
      v12 = [v11 edge];
      if (v12 > 3)
      {
        v13 = 0;
      }

      else
      {
        v13 = dword_21F8A7390[v12];
      }

      [v11 offset];
      v10 = [[SBDisplayArrangementItem alloc] initWithDisplayIdentity:v7 relativeDisplayIdentity:v8 edge:v13 offset:-v15];

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