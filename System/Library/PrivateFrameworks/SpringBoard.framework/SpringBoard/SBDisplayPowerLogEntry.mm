@interface SBDisplayPowerLogEntry
+ (id)forDisplay:(id)a3 mode:(unint64_t)a4 zoom:(unint64_t)a5;
- (BOOL)isEqual:(id)a3;
- (CGSize)canvasSize;
- (CGSize)nativeSize;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)logPayload;
- (unint64_t)hash;
@end

@implementation SBDisplayPowerLogEntry

+ (id)forDisplay:(id)a3 mode:(unint64_t)a4 zoom:(unint64_t)a5
{
  v7 = [a3 CADisplay];
  v8 = v7;
  if (!v7)
  {
    v20 = SBLogDisplayControlling();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      [SBDisplayPowerLogEntry forDisplay:v20 mode:? zoom:?];
    }

    goto LABEL_6;
  }

  v9 = [v7 name];

  v10 = [v8 name];
  v11 = v10;
  if (v9)
  {
    [v8 bounds];
    v13 = v12;
    v15 = v14;
    [v8 nativeSize];
    v17 = v16;
    v19 = v18;
    goto LABEL_9;
  }

  if (!v11)
  {
    v20 = SBLogDisplayControlling();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      [SBDisplayPowerLogEntry forDisplay:v8 mode:v20 zoom:?];
    }

LABEL_6:
  }

  v17 = *MEMORY[0x277CBF3A8];
  v19 = *(MEMORY[0x277CBF3A8] + 8);
  v11 = @"<Invalid>";
  v15 = v19;
  v13 = *MEMORY[0x277CBF3A8];
LABEL_9:
  v21 = objc_alloc_init(SBDisplayPowerLogEntry);
  [(SBDisplayPowerLogEntry *)v21 setDisplayName:v11];
  [(SBDisplayPowerLogEntry *)v21 setCanvasSize:v13, v15];
  [(SBDisplayPowerLogEntry *)v21 setNativeSize:v17, v19];
  [(SBDisplayPowerLogEntry *)v21 setWindowingMode:a4];
  [(SBDisplayPowerLogEntry *)v21 setZoomLevel:a5];

  return v21;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(SBDisplayPowerLogEntry);
  [(SBDisplayPowerLogEntry *)v4 setDisplayName:self->_displayName];
  [(SBDisplayPowerLogEntry *)v4 setCanvasSize:self->_canvasSize.width, self->_canvasSize.height];
  [(SBDisplayPowerLogEntry *)v4 setNativeSize:self->_nativeSize.width, self->_nativeSize.height];
  [(SBDisplayPowerLogEntry *)v4 setWindowingMode:self->_windowingMode];
  [(SBDisplayPowerLogEntry *)v4 setZoomLevel:self->_zoomLevel];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v8 = [(NSString *)self->_displayName isEqualToString:v5->_displayName]&& (self->_canvasSize.width == v5->_canvasSize.width ? (v6 = self->_canvasSize.height == v5->_canvasSize.height) : (v6 = 0), v6 && (self->_nativeSize.width == v5->_nativeSize.width ? (v7 = self->_nativeSize.height == v5->_nativeSize.height) : (v7 = 0), v7 && self->_windowingMode == v5->_windowingMode)) && self->_zoomLevel == v5->_zoomLevel;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CF0C40] builder];
  v4 = [v3 appendString:self->_displayName];
  v5 = [v3 appendCGSize:{self->_canvasSize.width, self->_canvasSize.height}];
  v6 = [v3 appendCGSize:{self->_nativeSize.width, self->_nativeSize.height}];
  v7 = [v3 appendUnsignedInteger:self->_windowingMode];
  v8 = [v3 appendUnsignedInteger:self->_zoomLevel];
  v9 = [v3 hash];

  return v9;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  [v3 appendString:self->_displayName withName:@"displayName"];
  v4 = [v3 appendSize:@"canvasSize" withName:{self->_canvasSize.width, self->_canvasSize.height}];
  v5 = [v3 appendSize:@"nativeSize" withName:{self->_nativeSize.width, self->_nativeSize.height}];
  v6 = self->_windowingMode - 1;
  if (v6 > 4)
  {
    v7 = @"Invalid";
  }

  else
  {
    v7 = off_2783C02C0[v6];
  }

  [v3 appendString:v7 withName:@"windowingMode"];
  v8 = self->_zoomLevel - 1;
  if (v8 > 3)
  {
    v9 = @"Invalid";
  }

  else
  {
    v9 = off_2783C02E8[v8];
  }

  [v3 appendString:v9 withName:@"zoomLevel"];
  v10 = [v3 build];

  return v10;
}

- (id)logPayload
{
  v14[7] = *MEMORY[0x277D85DE8];
  v14[0] = self->_displayName;
  v13[0] = @"displayName";
  v13[1] = @"canvasSizeWidth";
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:self->_canvasSize.width];
  v14[1] = v3;
  v13[2] = @"canvasSizeHeight";
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:self->_canvasSize.height];
  v14[2] = v4;
  v13[3] = @"nativeSizeWidth";
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_nativeSize.width];
  v14[3] = v5;
  v13[4] = @"nativeSizeHeight";
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_nativeSize.height];
  v14[4] = v6;
  v13[5] = @"windowingMode";
  v7 = self->_windowingMode - 1;
  if (v7 > 4)
  {
    v8 = @"Invalid";
  }

  else
  {
    v8 = off_2783C02C0[v7];
  }

  v14[5] = v8;
  v13[6] = @"zoomLevel";
  v9 = self->_zoomLevel - 1;
  if (v9 > 3)
  {
    v10 = @"Invalid";
  }

  else
  {
    v10 = off_2783C02E8[v9];
  }

  v14[6] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:7];

  return v11;
}

- (CGSize)canvasSize
{
  width = self->_canvasSize.width;
  height = self->_canvasSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)nativeSize
{
  width = self->_nativeSize.width;
  height = self->_nativeSize.height;
  result.height = height;
  result.width = width;
  return result;
}

+ (void)forDisplay:(uint64_t)a1 mode:(NSObject *)a2 zoom:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_fault_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_FAULT, "we received a CADisplay with a nil name. garbage in garbage out. caDisplay: %{public}@", &v2, 0xCu);
}

@end