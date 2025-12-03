@interface TSCH3DShaderVariableLinkage
+ (TSCH3DShaderVariableLinkage)linkageWithVariable:(id)variable;
- (BOOL)canHaveFragment;
- (BOOL)declaredInShader:(TSCH3DShaderType)shader scope:(TSCH3DShaderVariableScopeType)scope;
- (BOOL)hasLinkage:(TSCH3DShaderType)linkage;
- (BOOL)hasShader:(TSCH3DShaderType)shader scope:(TSCH3DShaderVariableScopeType)scope;
- (BOOL)hasVertex;
- (BOOL)scopeHasFragment;
- (BOOL)updateLinkage:(TSCH3DShaderType)linkage;
- (BOOL)updateShader:(TSCH3DShaderType)shader scope:(TSCH3DShaderVariableScopeType)scope;
- (TSCH3DShaderVariableLinkage)initWithVariable:(id)variable;
- (TSCH3DShaderVariableScopes)declaredScope;
- (TSCH3DShaderVariableScopes)scope;
- (id).cxx_construct;
- (id)description;
- (id)globalNameForShader:(TSCH3DShaderType)shader scope:(TSCH3DShaderVariableScopeType)scope;
- (id)nameForShader:(TSCH3DShaderType)shader scope:(TSCH3DShaderVariableScopeType)scope;
- (id)resolveGlobalNameForShader:(TSCH3DShaderType)shader scope:(TSCH3DShaderVariableScopeType)scope defaultTo:(id)to;
- (id)variableDeclarationInShader:(TSCH3DShaderType)shader scope:(TSCH3DShaderVariableScopeType)scope isMetal:(BOOL)metal;
- (id)variableQualifiersWithStorageQualifier:(id)qualifier isMetal:(BOOL)metal;
- (unint64_t)hasGlobal;
- (void)addBodyScope:(TSCH3DShaderType)scope;
- (void)addDeclaredShader:(TSCH3DShaderType)shader scope:(TSCH3DShaderVariableScopeType)scope;
- (void)addShader:(TSCH3DShaderType)shader scope:(TSCH3DShaderVariableScopeType)scope;
- (void)removeShader:(TSCH3DShaderType)shader scope:(TSCH3DShaderVariableScopeType)scope;
@end

@implementation TSCH3DShaderVariableLinkage

+ (TSCH3DShaderVariableLinkage)linkageWithVariable:(id)variable
{
  variableCopy = variable;
  v5 = [self alloc];
  v10 = objc_msgSend_initWithVariable_(v5, v6, v7, v8, v9, variableCopy);

  return v10;
}

- (TSCH3DShaderVariableLinkage)initWithVariable:(id)variable
{
  variableCopy = variable;
  v25.receiver = self;
  v25.super_class = TSCH3DShaderVariableLinkage;
  v6 = [(TSCH3DShaderVariableLinkage *)&v25 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_variable, variable);
    v7->_linked._value = objc_msgSend_initialLinkType(variableCopy, v8, v9, v10, v11);
    isSpecial = objc_msgSend_isSpecial(variableCopy, v12, v13, v14, v15);
    v21 = 2;
    if (!isSpecial)
    {
      v21 = 0;
    }

    v7->_scope._scopes.__elems_[0]._value = v21;
    v7->_scope._scopes.__elems_[1]._value = v21;
    v22 = objc_msgSend_isSpecial(variableCopy, v17, v18, v19, v20);
    v23 = 2;
    if (!v22)
    {
      v23 = 0;
    }

    v7->_declaredScope._scopes.__elems_[0]._value = v23;
    v7->_declaredScope._scopes.__elems_[1]._value = v23;
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v21.receiver = self;
  v21.super_class = TSCH3DShaderVariableLinkage;
  v4 = [(TSCH3DShaderVariableLinkage *)&v21 description];
  v9 = sub_27619B234(&self->_linked, v5, v6, v7, v8);
  v14 = sub_2761AAE98(&self->_scope, v10, v11, v12, v13);
  v19 = objc_msgSend_stringWithFormat_(v3, v15, v16, v17, v18, @"%@(linked %@, scope %@, %@)", v4, v9, v14, self->_variable);

  return v19;
}

- (id)variableQualifiersWithStorageQualifier:(id)qualifier isMetal:(BOOL)metal
{
  metalCopy = metal;
  qualifierCopy = qualifier;
  v12 = objc_msgSend_string(MEMORY[0x277CCAB68], v7, v8, v9, v10);
  if (metalCopy)
  {
    v16 = objc_msgSend_commonShaderType(self->_variable, v11, v13, v14, v15);
    objc_msgSend_appendString_(v12, v17, v18, v19, v20, v16);
  }

  else
  {
    if (objc_msgSend_length(qualifierCopy, v11, v13, v14, v15))
    {
      objc_msgSend_appendFormat_(v12, v21, v22, v23, v24, @"%@ ", qualifierCopy);
    }

    v16 = objc_msgSend_precision(self->_variable, v21, v22, v23, v24);
    if (objc_msgSend_length(v16, v25, v26, v27, v28))
    {
      v33 = objc_msgSend_precision(self->_variable, v29, v30, v31, v32);
      objc_msgSend_appendFormat_(v12, v34, v35, v36, v37, @"%@ ", v33);
    }

    v38 = objc_msgSend_type(self->_variable, v29, v30, v31, v32);
    objc_msgSend_appendString_(v12, v39, v40, v41, v42, v38);
  }

  return v12;
}

- (BOOL)declaredInShader:(TSCH3DShaderType)shader scope:(TSCH3DShaderVariableScopeType)scope
{
  p_declaredScope = &self->_declaredScope;
  v9 = sub_2761AAAA4(v4, v5, v6, &self->_declaredScope, shader._value);
  if (scope._value)
  {
    value = scope._value;
  }

  else
  {
    value = -1;
  }

  return (p_declaredScope->_scopes.__elems_[v9]._value & value) == scope._value;
}

- (id)variableDeclarationInShader:(TSCH3DShaderType)shader scope:(TSCH3DShaderVariableScopeType)scope isMetal:(BOOL)metal
{
  metalCopy = metal;
  v12 = objc_msgSend_nameForShader_scope_(self, a2, v5, v6, v7);
  if (objc_msgSend_declaredInShader_scope_(self, v13, v14, v15, v16, shader._value, scope._value))
  {
    v21 = v12;
  }

  else
  {
    v22 = objc_msgSend_variableQualifiersWithStorageQualifier_isMetal_(self, v17, v18, v19, v20, 0, metalCopy);
    v21 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v23, v24, v25, v26, @"%@ %@", v22, v12);
  }

  return v21;
}

- (BOOL)scopeHasFragment
{
  if (objc_msgSend_isUniform(self, a2, v2, v3, v4))
  {
    return 1;
  }

  return MEMORY[0x2821F9670](self, sel_isVertexVarying, v6, v7, v8);
}

- (void)addShader:(TSCH3DShaderType)shader scope:(TSCH3DShaderVariableScopeType)scope
{
  value = scope._value;
  p_scope = &self->_scope;
  v9 = sub_2761AAAA4(v4, v5, v6, &self->_scope, shader._value);
  p_scope->_scopes.__elems_[v9]._value |= value;
}

- (BOOL)updateShader:(TSCH3DShaderType)shader scope:(TSCH3DShaderVariableScopeType)scope
{
  p_scope = &self->_scope;
  v9 = sub_2761AAAA4(v4, v5, v6, &self->_scope, shader._value);
  value = p_scope->_scopes.__elems_[v9]._value;
  if (scope._value)
  {
    v11 = scope._value;
  }

  else
  {
    v11 = -1;
  }

  p_scope->_scopes.__elems_[v9]._value = value | SLODWORD(scope._value);
  return (value & v11) != scope._value;
}

- (void)removeShader:(TSCH3DShaderType)shader scope:(TSCH3DShaderVariableScopeType)scope
{
  p_scope = &self->_scope;
  v9 = sub_2761AAAA4(v4, v5, v6, &self->_scope, shader._value);
  p_scope->_scopes.__elems_[v9]._value &= ~scope._value;
}

- (BOOL)hasShader:(TSCH3DShaderType)shader scope:(TSCH3DShaderVariableScopeType)scope
{
  p_scope = &self->_scope;
  v9 = sub_2761AAAA4(v4, v5, v6, &self->_scope, shader._value);
  if (scope._value)
  {
    value = scope._value;
  }

  else
  {
    value = -1;
  }

  return (p_scope->_scopes.__elems_[v9]._value & value) == scope._value;
}

- (void)addBodyScope:(TSCH3DShaderType)scope
{
  p_scope = &self->_scope;
  if (self->_scope._scopes.__elems_[sub_2761AAAA4(v3, v4, v5, &self->_scope, scope._value)]._value == 4)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "[TSCH3DShaderVariableLinkage addBodyScope:]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DShaderVariableLinkage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v20, v21, v22, v23, v14, v19, 144, 0, "cannot add body scope to uniform %@", self);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
  }

  v31 = p_scope->_scopes.__elems_[sub_2761AAAA4(v10, v11, v12, p_scope, scope._value)]._value != 16 || LODWORD(scope._value) == 2;
  if (v31 && p_scope->_scopes.__elems_[sub_2761AAAA4(v28, v29, v30, p_scope, scope._value)]._value != 2)
  {

    objc_msgSend_addShader_scope_(self, v32, v33, v34, v35, scope._value, 1);
  }
}

- (BOOL)updateLinkage:(TSCH3DShaderType)linkage
{
  value = self->_linked._value;
  if (linkage._value)
  {
    v4 = linkage._value;
  }

  else
  {
    v4 = -1;
  }

  self->_linked._value = value | SLODWORD(linkage._value);
  return (value & v4) != linkage._value;
}

- (BOOL)hasLinkage:(TSCH3DShaderType)linkage
{
  if (linkage._value)
  {
    value = linkage._value;
  }

  else
  {
    value = -1;
  }

  return (self->_linked._value & value) == linkage._value;
}

- (BOOL)canHaveFragment
{
  if ((objc_msgSend_scopeHasFragment(self, a2, v2, v3, v4) & 1) != 0 || objc_msgSend_shaderType(self, v6, v7, v8, v9) == 2)
  {
    return 1;
  }

  return objc_msgSend_hasFragment(self, v10, v11, v12, v13);
}

- (BOOL)hasVertex
{
  if (objc_msgSend_isVertex(self, a2, v2, v3, v4))
  {
    return 1;
  }

  else
  {
    return self->_linked._value & 1;
  }
}

- (unint64_t)hasGlobal
{
  v5 = 0;
  p_scope = &self->_scope;
  do
  {
    value = p_scope->_scopes.__elems_[v5]._value;
    if ((value & 4) != 0)
    {
      break;
    }
  }

  while (v5++ != 1);
  v9 = ((p_scope->_scopes.__elems_[sub_2761AAAA4(v2, v3, v4, &self->_scope, 1)]._value >> 3) & 1) + ((value & 4) >> 2);
  return v9 + ((p_scope->_scopes.__elems_[sub_2761AAAA4(v10, v11, v12, p_scope, 1)]._value >> 4) & 1);
}

- (id)resolveGlobalNameForShader:(TSCH3DShaderType)shader scope:(TSCH3DShaderVariableScopeType)scope defaultTo:(id)to
{
  value = scope._value;
  toCopy = to;
  if (objc_msgSend_isGlobalScope_(self, v9, v10, v11, v12, scope._value))
  {
    hasGlobal = objc_msgSend_hasGlobal(self, v13, v14, v15, v16);
    if ((scope._value & 4) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    hasGlobal = 0;
    if ((scope._value & 4) == 0)
    {
      goto LABEL_7;
    }
  }

  if (LODWORD(scope._value) != 4)
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "[TSCH3DShaderVariableLinkage resolveGlobalNameForShader:scope:defaultTo:]");
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, v21, v22, v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DShaderVariableLinkage.mm");
    v29 = sub_2761A17CC(&value, v25, v26, v27, v28);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v30, v31, v32, v33, v19, v24, 226, 0, "uniform cannot have other scope %@", v29);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35, v36, v37);
  }

LABEL_7:
  if (hasGlobal && (objc_msgSend_hasShader_scope_(self, v13, v14, v15, v16, shader._value, value) & 1) != 0)
  {
    v42 = MEMORY[0x277CCACA8];
    v43 = objc_msgSend_name(self->_variable, v38, v39, v40, v41);
    v44 = sub_2761ABB18(&value);
    v49 = objc_msgSend_stringWithFormat_(v42, v45, v46, v47, v48, @"%@%@", v43, v44);
  }

  else
  {
    v49 = toCopy;
  }

  return v49;
}

- (id)globalNameForShader:(TSCH3DShaderType)shader scope:(TSCH3DShaderVariableScopeType)scope
{
  value = scope._value;
  v36 = scope._value;
  if ((objc_msgSend_isGlobalScope_(self, a2, v4, v5, v6, scope._value) & 1) == 0)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "[TSCH3DShaderVariableLinkage globalNameForShader:scope:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DShaderVariableLinkage.mm");
    v25 = sub_2761A17CC(&v36, v21, v22, v23, v24);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v26, v27, v28, v29, v15, v20, 234, 0, "invalid scope type %@", v25);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31, v32, v33);
    value = v36;
  }

  v34 = objc_msgSend_resolveGlobalNameForShader_scope_defaultTo_(self, v10, v11, v12, v13, shader._value, value, 0);

  return v34;
}

- (id)nameForShader:(TSCH3DShaderType)shader scope:(TSCH3DShaderVariableScopeType)scope
{
  v10 = objc_msgSend_name(self->_variable, a2, v4, v5, v6);
  v15 = objc_msgSend_resolveGlobalNameForShader_scope_defaultTo_(self, v11, v12, v13, v14, shader._value, scope._value, v10);

  return v15;
}

- (void)addDeclaredShader:(TSCH3DShaderType)shader scope:(TSCH3DShaderVariableScopeType)scope
{
  value = scope._value;
  p_declaredScope = &self->_declaredScope;
  v9 = sub_2761AAAA4(v4, v5, v6, &self->_declaredScope, shader._value);
  p_declaredScope->_scopes.__elems_[v9]._value |= value;
}

- (TSCH3DShaderVariableScopes)scope
{
  value = self->_scope._scopes.__elems_[1]._value;
  v3 = self->_scope._scopes.__elems_[0]._value;
  result._scopes.__elems_[1]._value = value;
  result._scopes.__elems_[0]._value = v3;
  return result;
}

- (TSCH3DShaderVariableScopes)declaredScope
{
  value = self->_declaredScope._scopes.__elems_[1]._value;
  v3 = self->_declaredScope._scopes.__elems_[0]._value;
  result._scopes.__elems_[1]._value = value;
  result._scopes.__elems_[0]._value = v3;
  return result;
}

- (id).cxx_construct
{
  *(self + 6) = 0;
  *(self + 1) = 0u;
  *(self + 2) = 0u;
  return self;
}

@end