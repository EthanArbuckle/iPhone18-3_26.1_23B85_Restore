@interface _UIScrollPocketProxyElement
- (BOOL)isEqual:(id)equal;
- (NSString)debugDescription;
- (_UIScrollPocketProxyElement)initWithEdge:(unint64_t)edge;
- (_UIScrollPocketProxyElement)initWithXPCDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)succinctDescription;
- (void)appendDescriptionToStream:(id)stream;
- (void)encodeWithXPCDictionary:(id)dictionary;
- (void)updateInteraction:(id)interaction;
- (void)updateWithElement:(id)element coordinateSpace:(id)space;
@end

@implementation _UIScrollPocketProxyElement

- (_UIScrollPocketProxyElement)initWithEdge:(unint64_t)edge
{
  v12.receiver = self;
  v12.super_class = _UIScrollPocketProxyElement;
  v4 = [(_UIScrollPocketProxyElement *)&v12 init];
  v5 = v4;
  if (v4)
  {
    v4->_edge = edge;
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    identifier = v5->_identifier;
    v5->_identifier = uUIDString;

    v9 = objc_alloc_init(_UIScrollPocketElementFrameCache);
    cache = v5->_cache;
    v5->_cache = v9;
  }

  return v5;
}

- (void)updateWithElement:(id)element coordinateSpace:(id)space
{
  spaceCopy = space;
  elementCopy = element;
  self->_style = [elementCopy _style];
  self->_requiresPocket = [elementCopy _requiresPocket];
  [(_UIScrollPocketElementFrameCache *)self->_cache invalidate];
  [elementCopy _frameInView:spaceCopy cache:self->_cache];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  self->_frameInSceneCoordinateSpace.origin.x = v9;
  self->_frameInSceneCoordinateSpace.origin.y = v11;
  self->_frameInSceneCoordinateSpace.size.width = v13;
  self->_frameInSceneCoordinateSpace.size.height = v15;
}

- (void)updateInteraction:(id)interaction
{
  edge = self->_edge;
  interactionCopy = interaction;
  [interactionCopy _setEdge:edge];
  [interactionCopy _setRequiresPocket:self->_requiresPocket];
  [interactionCopy _setRect:{self->_frameInSceneCoordinateSpace.origin.x, self->_frameInSceneCoordinateSpace.origin.y, self->_frameInSceneCoordinateSpace.size.width, self->_frameInSceneCoordinateSpace.size.height}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[_UIScrollPocketProxyElement alloc] initWithEdge:self->_edge];
  v4->_style = self->_style;
  v4->_requiresPocket = self->_requiresPocket;
  size = self->_frameInSceneCoordinateSpace.size;
  v4->_frameInSceneCoordinateSpace.origin = self->_frameInSceneCoordinateSpace.origin;
  v4->_frameInSceneCoordinateSpace.size = size;
  objc_storeStrong(&v4->_identifier, self->_identifier);
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  edge = self->_edge;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __39___UIScrollPocketProxyElement_isEqual___block_invoke;
  v29[3] = &unk_1E70F7F90;
  v7 = equalCopy;
  v30 = v7;
  v8 = [v5 appendInt64:edge counterpart:v29];
  v9 = self->_edge;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __39___UIScrollPocketProxyElement_isEqual___block_invoke_2;
  v27[3] = &unk_1E70F7F90;
  v10 = v7;
  v28 = v10;
  v11 = [v5 appendInt64:v9 counterpart:v27];
  requiresPocket = self->_requiresPocket;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __39___UIScrollPocketProxyElement_isEqual___block_invoke_3;
  v25[3] = &unk_1E70F3CB0;
  v13 = v10;
  v26 = v13;
  v14 = [v5 appendBool:requiresPocket counterpart:v25];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __39___UIScrollPocketProxyElement_isEqual___block_invoke_4;
  v23[3] = &unk_1E70F7FB8;
  v15 = v13;
  v24 = v15;
  v16 = [v5 appendCGRect:v23 counterpart:{self->_frameInSceneCoordinateSpace.origin.x, self->_frameInSceneCoordinateSpace.origin.y, self->_frameInSceneCoordinateSpace.size.width, self->_frameInSceneCoordinateSpace.size.height}];
  identifier = self->_identifier;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __39___UIScrollPocketProxyElement_isEqual___block_invoke_5;
  v21[3] = &unk_1E70F7FE0;
  v22 = v15;
  v18 = v15;
  v19 = [v5 appendString:identifier counterpart:v21];
  LOBYTE(identifier) = [v5 isEqual];

  return identifier;
}

- (_UIScrollPocketProxyElement)initWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = _UIScrollPocketProxyElement;
  v5 = [(_UIScrollPocketProxyElement *)&v13 init];
  if (v5)
  {
    v5->_edge = xpc_dictionary_get_int64(dictionaryCopy, [@"edge" UTF8String]);
    v5->_style = xpc_dictionary_get_int64(dictionaryCopy, [@"style" UTF8String]);
    v5->_requiresPocket = xpc_dictionary_get_BOOL(dictionaryCopy, [@"requiresPocket" UTF8String]);
    [@"frameInSceneCoordinateSpace" UTF8String];
    BSDeserializeCGRectFromXPCDictionaryWithKey();
    v5->_frameInSceneCoordinateSpace.origin.x = v6;
    v5->_frameInSceneCoordinateSpace.origin.y = v7;
    v5->_frameInSceneCoordinateSpace.size.width = v8;
    v5->_frameInSceneCoordinateSpace.size.height = v9;
    [@"identifier" UTF8String];
    v10 = BSDeserializeStringFromXPCDictionaryWithKey();
    identifier = v5->_identifier;
    v5->_identifier = v10;
  }

  return v5;
}

- (void)encodeWithXPCDictionary:(id)dictionary
{
  xdict = dictionary;
  xpc_dictionary_set_int64(xdict, [@"edge" UTF8String], self->_edge);
  xpc_dictionary_set_int64(xdict, [@"style" UTF8String], self->_style);
  xpc_dictionary_set_BOOL(xdict, [@"requiresPocket" UTF8String], self->_requiresPocket);
  [@"frameInSceneCoordinateSpace" UTF8String];
  BSSerializeCGRectToXPCDictionaryWithKey();
  [@"identifier" UTF8String];
  BSSerializeStringToXPCDictionaryWithKey();
}

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __57___UIScrollPocketProxyElement_appendDescriptionToStream___block_invoke;
  v11[3] = &unk_1E70F35B8;
  v5 = streamCopy;
  v12 = v5;
  selfCopy = self;
  [v5 appendProem:self block:v11];
  style = [v5 style];
  verbosity = [style verbosity];

  if (verbosity != 2)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __57___UIScrollPocketProxyElement_appendDescriptionToStream___block_invoke_2;
    v8[3] = &unk_1E70F35B8;
    v9 = v5;
    selfCopy2 = self;
    [v9 appendBodySectionWithName:0 block:v8];
  }
}

- (id)succinctDescription
{
  v3 = MEMORY[0x1E698E688];
  succinctStyle = [MEMORY[0x1E698E690] succinctStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:succinctStyle];

  return v5;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E698E688];
  debugStyle = [MEMORY[0x1E698E690] debugStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:debugStyle];

  return v5;
}

@end