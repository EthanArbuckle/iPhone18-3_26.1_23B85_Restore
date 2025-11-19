@interface SBSDisplayLayoutElement
- (BOOL)sb_isStashedPIP;
- (BOOL)sb_isTransitioning;
- (SBSDisplayLayoutElement)initWithIdentifier:(id)a3 layoutRole:(int64_t)a4;
- (id)succinctDescriptionBuilder;
- (int64_t)layoutRole;
- (int64_t)zOrderIndex;
- (void)sb_setStashedPIP:(BOOL)a3;
- (void)sb_setTransitioning:(BOOL)a3;
- (void)setLayoutRole:(int64_t)a3;
- (void)setZOrderIndex:(int64_t)a3;
@end

@implementation SBSDisplayLayoutElement

- (id)succinctDescriptionBuilder
{
  v10.receiver = self;
  v10.super_class = SBSDisplayLayoutElement;
  v3 = [(SBSDisplayLayoutElement *)&v10 succinctDescriptionBuilder];
  v4 = SBSDisplayLayoutRoleDescription([(SBSDisplayLayoutElement *)self layoutRole]);
  v5 = [v3 appendObject:v4 withName:@"role"];

  if ([(SBSDisplayLayoutElement *)self zOrderIndex]>= 1)
  {
    v6 = [v3 appendInteger:-[SBSDisplayLayoutElement zOrderIndex](self withName:{"zOrderIndex"), @"zOrderIndex"}];
  }

  v7 = [v3 appendBool:-[SBSDisplayLayoutElement sb_isTransitioning](self withName:"sb_isTransitioning") ifEqualTo:{@"transitioning", 1}];
  v8 = [v3 appendBool:-[SBSDisplayLayoutElement sb_isStashedPIP](self withName:"sb_isStashedPIP") ifEqualTo:{@"stashedPIP", 1}];

  return v3;
}

- (int64_t)layoutRole
{
  v2 = [(SBSDisplayLayoutElement *)self otherSettings];
  v3 = [v2 objectForSetting:1];
  v4 = [v3 integerValue];

  return v4;
}

- (int64_t)zOrderIndex
{
  v2 = [(SBSDisplayLayoutElement *)self otherSettings];
  v3 = [v2 objectForSetting:4];
  v4 = [v3 integerValue];

  return v4;
}

- (BOOL)sb_isTransitioning
{
  v2 = [(SBSDisplayLayoutElement *)self otherSettings];
  v3 = [v2 BOOLForSetting:2];

  return v3;
}

- (BOOL)sb_isStashedPIP
{
  v2 = [(SBSDisplayLayoutElement *)self otherSettings];
  v3 = [v2 BOOLForSetting:3];

  return v3;
}

- (SBSDisplayLayoutElement)initWithIdentifier:(id)a3 layoutRole:(int64_t)a4
{
  v9.receiver = self;
  v9.super_class = SBSDisplayLayoutElement;
  v5 = [(SBSDisplayLayoutElement *)&v9 initWithIdentifier:a3];
  v6 = v5;
  if (v5)
  {
    v7 = [(SBSDisplayLayoutElement *)v5 otherSettings];
    [v7 setObject:@"SpringBoard" forSetting:0];

    [(SBSDisplayLayoutElement *)v6 setLayoutRole:a4];
  }

  return v6;
}

- (void)setZOrderIndex:(int64_t)a3
{
  if (a3 < 0)
  {
    [(SBSDisplayLayoutElement *)a2 setZOrderIndex:?];
  }

  v5 = [(SBSDisplayLayoutElement *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [v5 setObject:v4 forSetting:4];
}

- (void)setLayoutRole:(int64_t)a3
{
  v5 = [(SBSDisplayLayoutElement *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [v5 setObject:v4 forSetting:1];
}

- (void)sb_setTransitioning:(BOOL)a3
{
  v3 = [(SBSDisplayLayoutElement *)self otherSettings];
  [v3 setFlag:BSSettingFlagForBool() forSetting:2];
}

- (void)sb_setStashedPIP:(BOOL)a3
{
  v3 = [(SBSDisplayLayoutElement *)self otherSettings];
  [v3 setFlag:BSSettingFlagForBool() forSetting:3];
}

- (void)setZOrderIndex:(const char *)a1 .cold.1(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"zOrderIndex >= 0"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"SBSDisplayLayoutElement.m";
    v16 = 1024;
    v17 = 99;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_19169D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end