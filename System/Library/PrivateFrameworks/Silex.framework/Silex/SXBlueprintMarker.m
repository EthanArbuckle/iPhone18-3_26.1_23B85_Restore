@interface SXBlueprintMarker
- (BOOL)isEqualToMarker:(id)a3;
- (CGPoint)approximateLocation;
- (NSString)description;
- (SXBlueprintMarker)initWithLeadingComponent:(id)a3 trailingComponent:(id)a4 approximateLocation:(CGPoint)a5 path:(id)a6;
@end

@implementation SXBlueprintMarker

- (SXBlueprintMarker)initWithLeadingComponent:(id)a3 trailingComponent:(id)a4 approximateLocation:(CGPoint)a5 path:(id)a6
{
  y = a5.y;
  x = a5.x;
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = SXBlueprintMarker;
  v15 = [(SXBlueprintMarker *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_leadingComponent, a3);
    objc_storeStrong(&v16->_trailingComponent, a4);
    v16->_approximateLocation.x = x;
    v16->_approximateLocation.y = y;
    objc_storeStrong(&v16->_path, a6);
  }

  return v16;
}

- (BOOL)isEqualToMarker:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (-[SXBlueprintMarker leadingComponent](self, "leadingComponent"), v5 = objc_claimAutoreleasedReturnValue(), [v4 leadingComponent], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "isEqual:", v6), v6, v5, v7) && ((-[SXBlueprintMarker trailingComponent](self, "trailingComponent"), (v8 = objc_claimAutoreleasedReturnValue()) == 0) || (v9 = v8, -[SXBlueprintMarker trailingComponent](self, "trailingComponent"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "trailingComponent"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v10, "isEqual:", v11), v11, v10, v9, v12)) && (-[SXBlueprintMarker path](self, "path"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "path"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v13, "isEqualToArray:", v14), v14, v13, v15))
  {
    v16 = [(SXBlueprintMarker *)self componentAnchor];
    if (v16)
    {
      v17 = v16;
      v18 = [(SXBlueprintMarker *)self componentAnchor];
      v19 = [v4 componentAnchor];
      v20 = [v18 isEqual:v19];
    }

    else
    {
      v20 = 1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20 & 1;
}

- (NSString)description
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v4 = [(SXBlueprintMarker *)self leadingComponent];
  v5 = [v4 identifier];
  v6 = [(SXBlueprintMarker *)self leadingComponent];
  v7 = [v6 type];
  [v3 appendFormat:@"; leading component: %@ (%@)", v5, v7];

  v8 = [(SXBlueprintMarker *)self trailingComponent];
  v9 = [v8 identifier];
  v10 = [(SXBlueprintMarker *)self trailingComponent];
  v11 = [v10 type];
  [v3 appendFormat:@"; trailing component: %@ (%@)", v9, v11];

  [(SXBlueprintMarker *)self approximateLocation];
  v12 = NSStringFromCGPoint(v28);
  [v3 appendFormat:@"; approximate location: %@", v12];

  objc_msgSend(v3, "appendFormat:", @"; path: (");
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v13 = [(SXBlueprintMarker *)self path];
  v14 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v22;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [*(*(&v21 + 1) + 8 * i) identifier];
        [v3 appendFormat:@"%@", v18];
      }

      v15 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v15);
  }

  [v3 appendFormat:@""]);
  v19 = [(SXBlueprintMarker *)self componentAnchor];
  [v3 appendFormat:@"; anchor: %@", v19];

  [v3 appendFormat:@">"];

  return v3;
}

- (CGPoint)approximateLocation
{
  x = self->_approximateLocation.x;
  y = self->_approximateLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

@end