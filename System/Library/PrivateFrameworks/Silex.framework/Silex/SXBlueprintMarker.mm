@interface SXBlueprintMarker
- (BOOL)isEqualToMarker:(id)marker;
- (CGPoint)approximateLocation;
- (NSString)description;
- (SXBlueprintMarker)initWithLeadingComponent:(id)component trailingComponent:(id)trailingComponent approximateLocation:(CGPoint)location path:(id)path;
@end

@implementation SXBlueprintMarker

- (SXBlueprintMarker)initWithLeadingComponent:(id)component trailingComponent:(id)trailingComponent approximateLocation:(CGPoint)location path:(id)path
{
  y = location.y;
  x = location.x;
  componentCopy = component;
  trailingComponentCopy = trailingComponent;
  pathCopy = path;
  v18.receiver = self;
  v18.super_class = SXBlueprintMarker;
  v15 = [(SXBlueprintMarker *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_leadingComponent, component);
    objc_storeStrong(&v16->_trailingComponent, trailingComponent);
    v16->_approximateLocation.x = x;
    v16->_approximateLocation.y = y;
    objc_storeStrong(&v16->_path, path);
  }

  return v16;
}

- (BOOL)isEqualToMarker:(id)marker
{
  markerCopy = marker;
  if (markerCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (-[SXBlueprintMarker leadingComponent](self, "leadingComponent"), v5 = objc_claimAutoreleasedReturnValue(), [markerCopy leadingComponent], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "isEqual:", v6), v6, v5, v7) && ((-[SXBlueprintMarker trailingComponent](self, "trailingComponent"), (v8 = objc_claimAutoreleasedReturnValue()) == 0) || (v9 = v8, -[SXBlueprintMarker trailingComponent](self, "trailingComponent"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(markerCopy, "trailingComponent"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v10, "isEqual:", v11), v11, v10, v9, v12)) && (-[SXBlueprintMarker path](self, "path"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(markerCopy, "path"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v13, "isEqualToArray:", v14), v14, v13, v15))
  {
    componentAnchor = [(SXBlueprintMarker *)self componentAnchor];
    if (componentAnchor)
    {
      v17 = componentAnchor;
      componentAnchor2 = [(SXBlueprintMarker *)self componentAnchor];
      componentAnchor3 = [markerCopy componentAnchor];
      v20 = [componentAnchor2 isEqual:componentAnchor3];
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
  leadingComponent = [(SXBlueprintMarker *)self leadingComponent];
  identifier = [leadingComponent identifier];
  leadingComponent2 = [(SXBlueprintMarker *)self leadingComponent];
  type = [leadingComponent2 type];
  [v3 appendFormat:@"; leading component: %@ (%@)", identifier, type];

  trailingComponent = [(SXBlueprintMarker *)self trailingComponent];
  identifier2 = [trailingComponent identifier];
  trailingComponent2 = [(SXBlueprintMarker *)self trailingComponent];
  type2 = [trailingComponent2 type];
  [v3 appendFormat:@"; trailing component: %@ (%@)", identifier2, type2];

  [(SXBlueprintMarker *)self approximateLocation];
  v12 = NSStringFromCGPoint(v28);
  [v3 appendFormat:@"; approximate location: %@", v12];

  objc_msgSend(v3, "appendFormat:", @"; path: (");
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  path = [(SXBlueprintMarker *)self path];
  v14 = [path countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(path);
        }

        identifier3 = [*(*(&v21 + 1) + 8 * i) identifier];
        [v3 appendFormat:@"%@", identifier3];
      }

      v15 = [path countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v15);
  }

  [v3 appendFormat:@""]);
  componentAnchor = [(SXBlueprintMarker *)self componentAnchor];
  [v3 appendFormat:@"; anchor: %@", componentAnchor];

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