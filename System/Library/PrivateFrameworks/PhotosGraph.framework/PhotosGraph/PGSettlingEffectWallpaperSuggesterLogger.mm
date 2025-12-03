@interface PGSettlingEffectWallpaperSuggesterLogger
- (PGSettlingEffectWallpaperSuggesterLogger)initWithLoggingConnection:(id)connection;
- (void)logFilteringStatistics:(id *)statistics assetGaterStatistics:(id *)gaterStatistics;
- (void)logHighlightStatistics:(id *)statistics;
- (void)logPosterFilteringStatistics:(id)statistics;
- (void)logSettlingEffectScoreRequest:(int)request;
- (void)logStats:(int)stats reason:(id)reason;
@end

@implementation PGSettlingEffectWallpaperSuggesterLogger

- (void)logHighlightStatistics:(id *)statistics
{
  [(PGSettlingEffectWallpaperSuggesterLogger *)self logSettlingEffectScoreRequest:statistics->var2];
  var1 = statistics->var1;

  [(PGSettlingEffectWallpaperSuggesterLogger *)self logStats:var1 reason:@"low settlingEffectScore"];
}

- (void)logPosterFilteringStatistics:(id)statistics
{
  [(PGSettlingEffectWallpaperSuggesterLogger *)self logSettlingEffectScoreRequest:statistics.var1];

  [(PGSettlingEffectWallpaperSuggesterLogger *)self logStats:statistics reason:@"low settlingEffectScore"];
}

- (void)logSettlingEffectScoreRequest:(int)request
{
  v7 = *MEMORY[0x277D85DE8];
  loggingConnection = self->_loggingConnection;
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
  {
    v6[0] = 67109120;
    v6[1] = request;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "[PGSettlingEffectWallpaperSuggester] \t (%d on-demand settling effect score requested)", v6, 8u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)logStats:(int)stats reason:(id)reason
{
  v12 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  loggingConnection = self->_loggingConnection;
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
  {
    v9[0] = 67109378;
    v9[1] = stats;
    v10 = 2112;
    v11 = reasonCopy;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "[PGSettlingEffectWallpaperSuggester] - %d (Filtered by %@)", v9, 0x12u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)logFilteringStatistics:(id *)statistics assetGaterStatistics:(id *)gaterStatistics
{
  v109 = *MEMORY[0x277D85DE8];
  loggingConnection = self->_loggingConnection;
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "[PGSettlingEffectWallpaperSuggester] Logging Live Photo filtering statistics...", buf, 2u);
    loggingConnection = self->_loggingConnection;
  }

  var0 = statistics->var0;
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    LODWORD(v107) = var0;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "[PGSettlingEffectWallpaperSuggester] %d (Live Photos in library)", buf, 8u);
  }

  if (var0)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __88__PGSettlingEffectWallpaperSuggesterLogger_logFilteringStatistics_assetGaterStatistics___block_invoke;
    aBlock[3] = &__block_descriptor_36_e8_d12__0i8l;
    v105 = var0;
    v9 = _Block_copy(aBlock);
    var1 = statistics->var1;
    v11 = self->_loggingConnection;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = v9[2];
      v13 = v11;
      v14 = v12(v9, var1);
      *buf = 67109376;
      LODWORD(v107) = var1;
      WORD2(v107) = 2048;
      *(&v107 + 6) = v14;
      _os_log_impl(&dword_22F0FC000, v13, OS_LOG_TYPE_INFO, "[PGSettlingEffectWallpaperSuggester] %d (wallpaper suggestions) %.2f%%", buf, 0x12u);

      v11 = self->_loggingConnection;
    }

    var2 = statistics->var2;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v16 = (var1 - var2);
      v17 = v9[2];
      v18 = v11;
      v19 = v17(v9, v16);
      *buf = 67109376;
      LODWORD(v107) = v16;
      WORD2(v107) = 2048;
      *(&v107 + 6) = v19;
      _os_log_impl(&dword_22F0FC000, v18, OS_LOG_TYPE_INFO, "[PGSettlingEffectWallpaperSuggester] \t %d (existing wallpaper with settling effect) %.2f%%", buf, 0x12u);

      v11 = self->_loggingConnection;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v20 = v9[2];
      v21 = v11;
      v22 = v20(v9, var2);
      *buf = 67109376;
      LODWORD(v107) = var2;
      WORD2(v107) = 2048;
      *(&v107 + 6) = v22;
      _os_log_impl(&dword_22F0FC000, v21, OS_LOG_TYPE_INFO, "[PGSettlingEffectWallpaperSuggester] \t %d (existing wallpaper without settling effect) %.2f%%", buf, 0x12u);

      v11 = self->_loggingConnection;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      var3 = statistics->var3;
      v24 = v9[2];
      v25 = v11;
      v26 = v24(v9, var3);
      *buf = 67109376;
      LODWORD(v107) = var3;
      WORD2(v107) = 2048;
      *(&v107 + 6) = v26;
      _os_log_impl(&dword_22F0FC000, v25, OS_LOG_TYPE_INFO, "[PGSettlingEffectWallpaperSuggester] Starting with %d (existing live photo wallpaper) %.2f%%", buf, 0x12u);
    }

    [(PGSettlingEffectWallpaperSuggesterLogger *)self logPosterFilteringStatistics:*&statistics->var4];
    v27 = statistics->var6.var0;
    v102 = *&statistics->var6.var1;
    v103 = *&statistics->var6.var3.var2;
    v28 = self->_loggingConnection;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v29 = v9[2];
      v30 = v28;
      v31 = v29(v9, v27);
      *buf = 67109376;
      LODWORD(v107) = v27;
      WORD2(v107) = 2048;
      *(&v107 + 6) = v31;
      _os_log_impl(&dword_22F0FC000, v30, OS_LOG_TYPE_INFO, "[PGSettlingEffectWallpaperSuggester] + %d (highlight candidates for FRC) %.2f%%", buf, 0x12u);
    }

    *buf = v27;
    v107 = v102;
    v108 = v103;
    [(PGSettlingEffectWallpaperSuggesterLogger *)self logHighlightStatistics:buf, v102, v103];
    v32 = self->_loggingConnection;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22F0FC000, v32, OS_LOG_TYPE_INFO, "[PGSettlingEffectWallpaperSuggester] FRC Gating: \n", buf, 2u);
      v32 = self->_loggingConnection;
    }

    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      v33 = gaterStatistics->var3;
      v34 = v9[2];
      v35 = v32;
      v36 = v34(v9, v33);
      *buf = 67109376;
      LODWORD(v107) = v33;
      WORD2(v107) = 2048;
      *(&v107 + 6) = v36;
      _os_log_impl(&dword_22F0FC000, v35, OS_LOG_TYPE_INFO, "[PGSettlingEffectWallpaperSuggester] - %d (Live Photos with invalid analysis versions) %.2f%%", buf, 0x12u);

      v32 = self->_loggingConnection;
    }

    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      var4 = gaterStatistics->var4;
      v38 = v9[2];
      v39 = v32;
      v40 = v38(v9, var4);
      *buf = 67109376;
      LODWORD(v107) = var4;
      WORD2(v107) = 2048;
      *(&v107 + 6) = v40;
      _os_log_impl(&dword_22F0FC000, v39, OS_LOG_TYPE_INFO, "[PGSettlingEffectWallpaperSuggester] - %d (Live Photos fail getting analysis result) %.2f%%", buf, 0x12u);

      v32 = self->_loggingConnection;
    }

    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      v41 = statistics->var5.var0;
      v42 = v9[2];
      v43 = v32;
      v44 = v42(v9, v41);
      *buf = 67109376;
      LODWORD(v107) = v41;
      WORD2(v107) = 2048;
      *(&v107 + 6) = v44;
      _os_log_impl(&dword_22F0FC000, v43, OS_LOG_TYPE_INFO, "[PGSettlingEffectWallpaperSuggester] - %d (Live Photos failed feature enablement) %.2f%%", buf, 0x12u);

      v32 = self->_loggingConnection;
    }

    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      v45 = statistics->var5.var1;
      v46 = v9[2];
      v47 = v32;
      v48 = v46(v9, v45);
      *buf = 67109376;
      LODWORD(v107) = v45;
      WORD2(v107) = 2048;
      *(&v107 + 6) = v48;
      _os_log_impl(&dword_22F0FC000, v47, OS_LOG_TYPE_INFO, "[PGSettlingEffectWallpaperSuggester] - %d (Live Photos failed hardware support) %.2f%%", buf, 0x12u);

      v32 = self->_loggingConnection;
    }

    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      v49 = statistics->var5.var2;
      v50 = v9[2];
      v51 = v32;
      v52 = v50(v9, v49);
      *buf = 67109376;
      LODWORD(v107) = v49;
      WORD2(v107) = 2048;
      *(&v107 + 6) = v52;
      _os_log_impl(&dword_22F0FC000, v51, OS_LOG_TYPE_INFO, "[PGSettlingEffectWallpaperSuggester] - %d (Live Photos failed to download resources) %.2f%%", buf, 0x12u);

      v32 = self->_loggingConnection;
    }

    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      v53 = statistics->var5.var3;
      v54 = v9[2];
      v55 = v32;
      v56 = v54(v9, v53);
      *buf = 67109376;
      LODWORD(v107) = v53;
      WORD2(v107) = 2048;
      *(&v107 + 6) = v56;
      _os_log_impl(&dword_22F0FC000, v55, OS_LOG_TYPE_INFO, "[PGSettlingEffectWallpaperSuggester] - %d (Live Photos failed adjustments supported) %.2f%%", buf, 0x12u);

      v32 = self->_loggingConnection;
    }

    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      v57 = statistics->var5.var4;
      v58 = v9[2];
      v59 = v32;
      v60 = v58(v9, v57);
      *buf = 67109376;
      LODWORD(v107) = v57;
      WORD2(v107) = 2048;
      *(&v107 + 6) = v60;
      _os_log_impl(&dword_22F0FC000, v59, OS_LOG_TYPE_INFO, "[PGSettlingEffectWallpaperSuggester] - %d (Live Photos failed with generic error) %.2f%%", buf, 0x12u);

      v32 = self->_loggingConnection;
    }

    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      var5 = statistics->var5.var5;
      v62 = v9[2];
      v63 = v32;
      v64 = v62(v9, var5);
      *buf = 67109376;
      LODWORD(v107) = var5;
      WORD2(v107) = 2048;
      *(&v107 + 6) = v64;
      _os_log_impl(&dword_22F0FC000, v63, OS_LOG_TYPE_INFO, "[PGSettlingEffectWallpaperSuggester] - %d (Live Photos failed metadata check) %.2f%%", buf, 0x12u);

      v32 = self->_loggingConnection;
    }

    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      var6 = statistics->var5.var6;
      v66 = v9[2];
      v67 = v32;
      v68 = v66(v9, var6);
      *buf = 67109376;
      LODWORD(v107) = var6;
      WORD2(v107) = 2048;
      *(&v107 + 6) = v68;
      _os_log_impl(&dword_22F0FC000, v67, OS_LOG_TYPE_INFO, "[PGSettlingEffectWallpaperSuggester] - %d (Live Photos failed stabilization) %.2f%%", buf, 0x12u);

      v32 = self->_loggingConnection;
    }

    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      var7 = statistics->var5.var7;
      v70 = v9[2];
      v71 = v32;
      v72 = v70(v9, var7);
      *buf = 67109376;
      LODWORD(v107) = var7;
      WORD2(v107) = 2048;
      *(&v107 + 6) = v72;
      _os_log_impl(&dword_22F0FC000, v71, OS_LOG_TYPE_INFO, "[PGSettlingEffectWallpaperSuggester] - %d (Live Photos failed video quality) %.2f%%", buf, 0x12u);

      v32 = self->_loggingConnection;
    }

    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      var8 = statistics->var5.var8;
      v74 = v9[2];
      v75 = v32;
      v76 = v74(v9, var8);
      *buf = 67109376;
      LODWORD(v107) = var8;
      WORD2(v107) = 2048;
      *(&v107 + 6) = v76;
      _os_log_impl(&dword_22F0FC000, v75, OS_LOG_TYPE_INFO, "[PGSettlingEffectWallpaperSuggester] - %d (Live Photos failed metadata integrity) %.2f%%", buf, 0x12u);

      v32 = self->_loggingConnection;
    }

    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      var9 = statistics->var5.var9;
      v78 = v9[2];
      v79 = v32;
      v80 = v78(v9, var9);
      *buf = 67109376;
      LODWORD(v107) = var9;
      WORD2(v107) = 2048;
      *(&v107 + 6) = v80;
      _os_log_impl(&dword_22F0FC000, v79, OS_LOG_TYPE_INFO, "[PGSettlingEffectWallpaperSuggester] - %d (Live Photos failed FRC) %.2f%%", buf, 0x12u);

      v32 = self->_loggingConnection;
    }

    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      var10 = statistics->var5.var10;
      v82 = v9[2];
      v83 = v32;
      v84 = v82(v9, var10);
      *buf = 67109376;
      LODWORD(v107) = var10;
      WORD2(v107) = 2048;
      *(&v107 + 6) = v84;
      _os_log_impl(&dword_22F0FC000, v83, OS_LOG_TYPE_INFO, "[PGSettlingEffectWallpaperSuggester] - %d (Live Photos failed video decision) %.2f%%", buf, 0x12u);

      v32 = self->_loggingConnection;
    }

    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      var11 = statistics->var5.var11;
      v86 = v9[2];
      v87 = v32;
      v88 = v86(v9, var11);
      *buf = 67109376;
      LODWORD(v107) = var11;
      WORD2(v107) = 2048;
      *(&v107 + 6) = v88;
      _os_log_impl(&dword_22F0FC000, v87, OS_LOG_TYPE_INFO, "[PGSettlingEffectWallpaperSuggester] - %d (Live Photos failed layout decision) %.2f%%", buf, 0x12u);

      v32 = self->_loggingConnection;
    }

    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      var12 = statistics->var5.var12;
      v90 = v9[2];
      v91 = v32;
      v92 = v90(v9, var12);
      *buf = 67109376;
      LODWORD(v107) = var12;
      WORD2(v107) = 2048;
      *(&v107 + 6) = v92;
      _os_log_impl(&dword_22F0FC000, v91, OS_LOG_TYPE_INFO, "[PGSettlingEffectWallpaperSuggester] - %d (Live Photos failed still transition) %.2f%%", buf, 0x12u);

      v32 = self->_loggingConnection;
    }

    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      v93 = statistics->var7;
      v94 = v9[2];
      v95 = v32;
      v96 = v94(v9, v93);
      *buf = 67109376;
      LODWORD(v107) = v93;
      WORD2(v107) = 2048;
      *(&v107 + 6) = v96;
      _os_log_impl(&dword_22F0FC000, v95, OS_LOG_TYPE_INFO, "[PGSettlingEffectWallpaperSuggester] = %d (FRC eligible candidates for suggestions) %.2f%%", buf, 0x12u);

      v32 = self->_loggingConnection;
    }

    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      v97 = statistics->var8;
      v98 = v9[2];
      v99 = v32;
      v100 = v98(v9, v97);
      *buf = 67109376;
      LODWORD(v107) = v97;
      WORD2(v107) = 2048;
      *(&v107 + 6) = v100;
      _os_log_impl(&dword_22F0FC000, v99, OS_LOG_TYPE_INFO, "[PGSettlingEffectWallpaperSuggester] = %d (FRC eligible highlight assets) %.2f%%", buf, 0x12u);
    }
  }

  v101 = *MEMORY[0x277D85DE8];
}

- (PGSettlingEffectWallpaperSuggesterLogger)initWithLoggingConnection:(id)connection
{
  connectionCopy = connection;
  v9.receiver = self;
  v9.super_class = PGSettlingEffectWallpaperSuggesterLogger;
  v6 = [(PGSettlingEffectWallpaperSuggesterLogger *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_loggingConnection, connection);
  }

  return v7;
}

@end