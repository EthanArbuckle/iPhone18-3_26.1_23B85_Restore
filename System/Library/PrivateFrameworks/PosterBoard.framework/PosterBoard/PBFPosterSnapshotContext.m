@interface PBFPosterSnapshotContext
+ (id)snapshotContextForDisplayContext:(id)a3 definition:(id)a4;
+ (id)snapshotContextsForRequest:(id)a3;
- (BOOL)isEqual:(id)a3;
- (PBFPosterSnapshotContext)initWithDisplayContext:(id)a3 definition:(id)a4;
- (id)description;
- (unint64_t)hash;
@end

@implementation PBFPosterSnapshotContext

+ (id)snapshotContextsForRequest:(id)a3
{
  v3 = a3;
  v4 = [v3 definitions];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__PBFPosterSnapshotContext_snapshotContextsForRequest___block_invoke;
  v8[3] = &unk_2782C8980;
  v9 = v3;
  v5 = v3;
  v6 = [v4 bs_mapNoNulls:v8];

  return v6;
}

PBFPosterSnapshotContext *__55__PBFPosterSnapshotContext_snapshotContextsForRequest___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [PBFPosterSnapshotContext alloc];
  v5 = [*(a1 + 32) displayContext];
  v6 = [(PBFPosterSnapshotContext *)v4 initWithDisplayContext:v5 definition:v3];

  return v6;
}

+ (id)snapshotContextForDisplayContext:(id)a3 definition:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[PBFPosterSnapshotContext alloc] initWithDisplayContext:v6 definition:v5];

  return v7;
}

- (PBFPosterSnapshotContext)initWithDisplayContext:(id)a3 definition:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PBFPosterSnapshotContext;
  v9 = [(PBFPosterSnapshotContext *)&v12 init];
  v10 = v9;
  if (v9)
  {
    v9->_cachedHash = 0x7FFFFFFFFFFFFFFFLL;
    objc_storeStrong(&v9->_displayContext, a3);
    objc_storeStrong(&v10->_definition, a4);
  }

  return v10;
}

- (unint64_t)hash
{
  result = self->_cachedHash;
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [(PBFDisplayContext *)self->_displayContext hash];
    v5 = [(PRPosterSnapshotDefinition *)self->_definition hash];
    v6 = 0xBF58476D1CE4E5B9 * (v5 ^ v4 ^ ((v5 ^ v4) >> 30));
    result = (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31);
    self->_cachedHash = result;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    v6 = v4;
    if (v5)
    {
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    v9 = v7;

    if (v9 && ([(PBFPosterSnapshotContext *)v9 displayContext], v10 = objc_claimAutoreleasedReturnValue(), [(PBFPosterSnapshotContext *)self displayContext], v11 = objc_claimAutoreleasedReturnValue(), v12 = BSEqualObjects(), v11, v10, v12))
    {
      v13 = [(PBFPosterSnapshotContext *)v9 definition];
      v14 = [(PBFPosterSnapshotContext *)self definition];
      v8 = BSEqualObjects();
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_displayContext withName:@"displayContext"];
  v5 = [v3 appendObject:self->_definition withName:@"definition"];
  v6 = [v3 build];

  return v6;
}

@end