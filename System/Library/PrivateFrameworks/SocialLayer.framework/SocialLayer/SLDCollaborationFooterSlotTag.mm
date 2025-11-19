@interface SLDCollaborationFooterSlotTag
+ (id)tagForTitle:(id)a3 subtitle:(id)a4 maxWidth:(double)a5;
- (BOOL)isEqual:(id)a3;
- (SLDCollaborationFooterSlotTag)initWithTitle:(id)a3 subtitle:(id)a4 maxWidth:(double)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation SLDCollaborationFooterSlotTag

+ (id)tagForTitle:(id)a3 subtitle:(id)a4 maxWidth:(double)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [[SLDCollaborationFooterSlotTag alloc] initWithTitle:v8 subtitle:v7 maxWidth:a5];

  return v9;
}

- (SLDCollaborationFooterSlotTag)initWithTitle:(id)a3 subtitle:(id)a4 maxWidth:(double)a5
{
  v8 = a3;
  v9 = a4;
  v17.receiver = self;
  v17.super_class = SLDCollaborationFooterSlotTag;
  v10 = [(SLDCollaborationFooterSlotTag *)&v17 init];
  if (v10)
  {
    if ((!v8 || [v8 isEqualToString:&stru_28468DAB8]) && (!v9 || objc_msgSend(v9, "isEqualToString:", &stru_28468DAB8)))
    {
      v11 = SLFrameworkLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [SLDCollaborationFooterSlotTag initWithTitle:v11 subtitle:? maxWidth:?];
      }
    }

    v12 = [v8 copy];
    title = v10->_title;
    v10->_title = v12;

    v14 = [v9 copy];
    subtitle = v10->_subtitle;
    v10->_subtitle = v14;

    v10->_maxWidth = a5;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SLDCollaborationFooterSlotTag alloc];
  v5 = [(SLDCollaborationFooterSlotTag *)self title];
  v6 = [(SLDCollaborationFooterSlotTag *)self subtitle];
  [(SLDCollaborationFooterSlotTag *)self maxWidth];
  v7 = [(SLDCollaborationFooterSlotTag *)v4 initWithTitle:v5 subtitle:v6 maxWidth:?];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = v5;
    if (v5 == self)
    {
      v14 = 1;
    }

    else
    {
      [(SLDCollaborationFooterSlotTag *)v5 maxWidth];
      v8 = v7;
      [(SLDCollaborationFooterSlotTag *)self maxWidth];
      if (SL_CGFloatApproximatelyEqualToFloat(v8, v9))
      {
        v10 = [(SLDCollaborationFooterSlotTag *)v6 title];
        v11 = [(SLDCollaborationFooterSlotTag *)self title];
        if ([v10 isEqualToString:v11])
        {
          v12 = [(SLDCollaborationFooterSlotTag *)v6 subtitle];
          v13 = [(SLDCollaborationFooterSlotTag *)self subtitle];
          v14 = [v12 isEqualToString:v13];
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (unint64_t)hash
{
  v3 = [(SLDCollaborationFooterSlotTag *)self title];
  v4 = [v3 hash];
  v5 = [(SLDCollaborationFooterSlotTag *)self subtitle];
  v6 = [v5 hash] ^ v4;
  [(SLDCollaborationFooterSlotTag *)self maxWidth];
  v8 = v7;

  return v6 ^ v8;
}

@end