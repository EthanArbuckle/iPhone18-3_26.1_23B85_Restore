@interface UIPointerRegion
+ (UIPointerRegion)regionWithRect:(CGRect)rect identifier:(id)identifier;
- (BOOL)isEqual:(id)equal;
- (CGRect)rect;
- (NSString)description;
- (UIView)referenceView;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation UIPointerRegion

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  [(UIPointerRegion *)self rect];
  v5 = v4;
  [(UIPointerRegion *)self rect];
  v7 = v6;
  [(UIPointerRegion *)self rect];
  v9 = v8;
  [(UIPointerRegion *)self rect];
  v11 = [v3 stringWithFormat:@"(%g %g %g %g)", v5, v7, v9, v10];;
  v12 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p rect = %@", objc_opt_class(), self, v11];;
  identifier = [(UIPointerRegion *)self identifier];

  if (identifier)
  {
    identifier2 = [(UIPointerRegion *)self identifier];
    [v12 appendFormat:@"; identifier = %@", identifier2];
  }

  v15 = [(UIPointerRegion *)self latchingAxes]- 1;
  if (v15 <= 2)
  {
    [v12 appendString:off_1E7125A28[v15]];
  }

  [v12 appendString:@">"];

  return v12;
}

- (CGRect)rect
{
  x = self->_rect.origin.x;
  y = self->_rect.origin.y;
  width = self->_rect.size.width;
  height = self->_rect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

+ (UIPointerRegion)regionWithRect:(CGRect)rect identifier:(id)identifier
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v8 = identifier;
  v9 = objc_opt_new();
  [v9 setRect:{x, y, width, height}];
  [v9 setIdentifier:v8];

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_class();
  [(UIPointerRegion *)self rect];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  identifier = [(UIPointerRegion *)self identifier];
  v14 = [v4 regionWithRect:identifier identifier:{v6, v8, v10, v12}];

  referenceView = [(UIPointerRegion *)self referenceView];
  [v14 setReferenceView:referenceView];

  [v14 setGenerationID:{-[UIPointerRegion generationID](self, "generationID")}];
  [v14 setLatchingAxes:{-[UIPointerRegion latchingAxes](self, "latchingAxes")}];
  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      identifier = [(UIPointerRegion *)v5 identifier];
      identifier2 = [(UIPointerRegion *)self identifier];
      v8 = identifier;
      v9 = identifier2;
      v10 = v9;
      if (v8 == v9)
      {
      }

      else
      {
        v11 = 0;
        referenceView2 = v9;
        referenceView = v8;
        if (!v8 || !v9)
        {
LABEL_16:

          goto LABEL_17;
        }

        v14 = [v8 isEqual:v9];

        if (!v14)
        {
          v11 = 0;
LABEL_17:

          goto LABEL_18;
        }
      }

      referenceView = [(UIPointerRegion *)v5 referenceView];
      referenceView2 = [(UIPointerRegion *)self referenceView];
      if (referenceView == referenceView2 && ([(UIPointerRegion *)v5 rect], v16 = v15, v18 = v17, v20 = v19, v22 = v21, [(UIPointerRegion *)self rect], v31.origin.x = v23, v31.origin.y = v24, v31.size.width = v25, v31.size.height = v26, v30.origin.x = v16, v30.origin.y = v18, v30.size.width = v20, v30.size.height = v22, CGRectEqualToRect(v30, v31)) && (v27 = [(UIPointerRegion *)v5 generationID], v27 == [(UIPointerRegion *)self generationID]))
      {
        latchingAxes = [(UIPointerRegion *)v5 latchingAxes];
        v11 = latchingAxes == [(UIPointerRegion *)self latchingAxes];
      }

      else
      {
        v11 = 0;
      }

      goto LABEL_16;
    }

    v11 = 0;
  }

LABEL_18:

  return v11;
}

- (unint64_t)hash
{
  [(UIPointerRegion *)self rect];
  v4 = v3;
  [(UIPointerRegion *)self rect];
  v6 = v5 ^ v4;
  [(UIPointerRegion *)self rect];
  v8 = v7;
  [(UIPointerRegion *)self rect];
  v10 = v6 ^ v8 ^ v9;
  identifier = [(UIPointerRegion *)self identifier];
  v12 = [identifier hash];
  referenceView = [(UIPointerRegion *)self referenceView];
  v14 = [referenceView hash];
  generationID = [(UIPointerRegion *)self generationID];
  v16 = v12 ^ v14 ^ generationID ^ [(UIPointerRegion *)self latchingAxes];

  return v16 ^ v10;
}

- (UIView)referenceView
{
  WeakRetained = objc_loadWeakRetained(&self->_referenceView);

  return WeakRetained;
}

@end