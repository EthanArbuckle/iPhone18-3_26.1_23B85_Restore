@interface SRHMediaViewsStore
+ (void)initialize;
- (CGRect)scrollViewVisibleArea;
- (NSXPCConnection)connection;
- (SRHMediaViewsStore)initWithScrollView:(id)a3;
- (void)_writeMediaEventsToBiome:(id)a3;
- (void)addViewToStore:(id)a3;
- (void)dealloc;
- (void)markViewsAsOffScreen;
- (void)markViewsAsOnScreen;
- (void)processScrollViewOffset;
- (void)removeAllViews;
- (void)removeViewFromStore:(id)a3;
- (void)setupConnection;
@end

@implementation SRHMediaViewsStore

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    _MergedGlobals_2 = os_log_create("com.apple.SensorKit", "SRHMediaViewsStore");
  }
}

- (SRHMediaViewsStore)initWithScrollView:(id)a3
{
  v6.receiver = self;
  v6.super_class = SRHMediaViewsStore;
  v4 = [(SRHMediaViewsStore *)&v6 init];
  if (v4)
  {
    v4->_scrollView = a3;
    v4->_offScreenMediaViews = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    v4->_onScreenMediaViews = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    v4->_q = dispatch_queue_create("com.apple.SensorKit.SKMediaEventsHelper.XPCConnection", 0);
    [(SRHMediaViewsStore *)v4 setupConnection];
  }

  return v4;
}

- (void)setupConnection
{
  self->_connection = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.SensorKit.SKMediaEventsHelper"];
  -[NSXPCConnection setRemoteObjectInterface:](self->_connection, "setRemoteObjectInterface:", [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2876FCEE0]);
  [(NSXPCConnection *)self->_connection _setQueue:self->_q];
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __37__SRHMediaViewsStore_setupConnection__block_invoke;
  v4[3] = &unk_279B977F0;
  objc_copyWeak(&v5, &location);
  [(NSXPCConnection *)self->_connection setInvalidationHandler:v4];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __37__SRHMediaViewsStore_setupConnection__block_invoke_40;
  v3[3] = &unk_279B97818;
  v3[4] = self;
  [(NSXPCConnection *)self->_connection setInterruptionHandler:v3];
  self->_connectionDidInvalidate = 0;
  [(NSXPCConnection *)self->_connection resume];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

uint64_t __37__SRHMediaViewsStore_setupConnection__block_invoke(uint64_t a1)
{
  v2 = _MergedGlobals_2;
  if (os_log_type_enabled(_MergedGlobals_2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_2655E8000, v2, OS_LOG_TYPE_INFO, "Connection to SKMediaEventsHelper has been invalidated.", v4, 2u);
  }

  return [objc_loadWeak((a1 + 32)) setConnectionDidInvalidate:1];
}

void __37__SRHMediaViewsStore_setupConnection__block_invoke_40(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = _MergedGlobals_2;
  if (os_log_type_enabled(_MergedGlobals_2, OS_LOG_TYPE_INFO))
  {
    v3 = *(*(a1 + 32) + 40);
    v4 = 134217984;
    v5 = v3;
    _os_log_impl(&dword_2655E8000, v2, OS_LOG_TYPE_INFO, "Connection to SKMediaEventsHelper has been interrupted. %p", &v4, 0xCu);
  }
}

- (void)dealloc
{
  [(NSMapTable *)self->_offScreenMediaViews removeAllObjects];

  self->_offScreenMediaViews = 0;
  [(NSMapTable *)self->_onScreenMediaViews removeAllObjects];

  self->_onScreenMediaViews = 0;
  self->_scrollView = 0;
  [(NSXPCConnection *)self->_connection invalidate];
  dispatch_release(self->_q);

  v3.receiver = self;
  v3.super_class = SRHMediaViewsStore;
  [(SRHMediaViewsStore *)&v3 dealloc];
}

- (NSXPCConnection)connection
{
  if ([(SRHMediaViewsStore *)self connectionDidInvalidate])
  {

    [(SRHMediaViewsStore *)self setupConnection];
  }

  return self->_connection;
}

- (void)addViewToStore:(id)a3
{
  if (![(NSMapTable *)self->_offScreenMediaViews objectForKey:?])
  {
    v5 = objc_alloc_init(SRHMediaView);
    [(NSMapTable *)self->_offScreenMediaViews setObject:v5 forKey:a3];
  }
}

- (void)removeViewFromStore:(id)a3
{
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  p_offScreenMediaViews = &self->_offScreenMediaViews;
  if (![(NSMapTable *)self->_offScreenMediaViews objectForKey:a3])
  {
    p_offScreenMediaViews = &self->_onScreenMediaViews;
    v7 = [(NSMapTable *)self->_onScreenMediaViews objectForKey:a3];
    if (!v7)
    {
      return;
    }

    [v5 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithBool:", 0), objc_msgSend(objc_msgSend(v7, "uuid"), "UUIDString")}];
    -[SRHMediaViewsStore _writeMediaEventsToBiome:](self, "_writeMediaEventsToBiome:", [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v5]);
  }

  v8 = *p_offScreenMediaViews;

  [(NSMapTable *)v8 removeObjectForKey:a3];
}

- (void)markViewsAsOffScreen
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [(NSMapTable *)self->_onScreenMediaViews keyEnumerator];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = v4;
  v5 = [(NSEnumerator *)v4 countByEnumeratingWithState:&v16 objects:v26 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v17;
    *&v6 = 134218499;
    v14 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [(NSMapTable *)self->_onScreenMediaViews objectForKey:v10, v14];
        [v3 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithBool:", 0), objc_msgSend(objc_msgSend(v11, "uuid"), "UUIDString")}];
        v12 = _MergedGlobals_2;
        if (os_log_type_enabled(_MergedGlobals_2, OS_LOG_TYPE_INFO))
        {
          scrollView = self->_scrollView;
          *buf = v14;
          v21 = v10;
          v22 = 2113;
          v23 = v11;
          v24 = 2048;
          v25 = scrollView;
          _os_log_impl(&dword_2655E8000, v12, OS_LOG_TYPE_INFO, "OffScreen event for view:%p, %{private}@, scrollView:%p (mark all visible media as offScreen)", buf, 0x20u);
        }
      }

      v7 = [(NSEnumerator *)obj countByEnumeratingWithState:&v16 objects:v26 count:16];
    }

    while (v7);
  }

  -[SRHMediaViewsStore _writeMediaEventsToBiome:](self, "_writeMediaEventsToBiome:", [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v3]);
}

- (void)markViewsAsOnScreen
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [(NSMapTable *)self->_onScreenMediaViews keyEnumerator];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(NSEnumerator *)v4 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v15;
    *&v6 = 138478083;
    v13 = v6;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = [(NSMapTable *)self->_onScreenMediaViews objectForKey:*(*(&v14 + 1) + 8 * v9), v13];
        [v3 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithBool:", 1), objc_msgSend(objc_msgSend(v10, "uuid"), "UUIDString")}];
        v11 = _MergedGlobals_2;
        if (os_log_type_enabled(_MergedGlobals_2, OS_LOG_TYPE_INFO))
        {
          scrollView = self->_scrollView;
          *buf = v13;
          v19 = v10;
          v20 = 2048;
          v21 = scrollView;
          _os_log_impl(&dword_2655E8000, v11, OS_LOG_TYPE_INFO, "OnScreen event for %{private}@, scrollView:%p (app is active)", buf, 0x16u);
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSEnumerator *)v4 countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v7);
  }

  -[SRHMediaViewsStore _writeMediaEventsToBiome:](self, "_writeMediaEventsToBiome:", [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v3]);
}

- (CGRect)scrollViewVisibleArea
{
  [-[UIScrollView superview](self->_scrollView "superview")];
  v4 = v3;
  [(UIScrollView *)self->_scrollView adjustedContentInset];
  v6 = v4 + v5;
  [-[UIScrollView superview](self->_scrollView "superview")];
  v8 = v7;
  [(UIScrollView *)self->_scrollView adjustedContentInset];
  v10 = v8 + v9;
  [-[UIScrollView superview](self->_scrollView "superview")];
  v12 = v11;
  [(UIScrollView *)self->_scrollView adjustedContentInset];
  v14 = v13;
  [(UIScrollView *)self->_scrollView adjustedContentInset];
  v16 = v12 - (v14 + v15);
  [-[UIScrollView superview](self->_scrollView "superview")];
  v18 = v17;
  [(UIScrollView *)self->_scrollView adjustedContentInset];
  v20 = v19;
  [(UIScrollView *)self->_scrollView adjustedContentInset];
  v22 = v18 - (v20 + v21);
  v23 = v6;
  v24 = v10;
  v25 = v16;
  result.size.height = v22;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

- (void)processScrollViewOffset
{
  v127 = *MEMORY[0x277D85DE8];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3052000000;
  v124 = __Block_byref_object_copy__0;
  v125 = __Block_byref_object_dispose__0;
  v3 = qword_280AC73E8;
  v126 = qword_280AC73E8;
  if (!qword_280AC73E8)
  {
    v122[0] = MEMORY[0x277D85DD0];
    v122[1] = 3221225472;
    v122[2] = __getUIApplicationClass_block_invoke;
    v122[3] = &unk_279B976D0;
    v122[4] = buf;
    __getUIApplicationClass_block_invoke(v122);
    v3 = *(*&buf[8] + 40);
  }

  _Block_object_dispose(buf, 8);
  v89 = [objc_msgSend(v3 "sharedApplication")];
  v87 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [(NSMapTable *)self->_onScreenMediaViews keyEnumerator];
  v92 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  v5 = [(NSEnumerator *)v4 countByEnumeratingWithState:&v106 objects:v121 count:16];
  if (v5)
  {
    v6 = *v107;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v107 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v106 + 1) + 8 * i);
        v9 = [(NSMapTable *)self->_onScreenMediaViews objectForKey:v8];
        [v8 bounds];
        [v8 convertPoint:-[UIScrollView superview](self->_scrollView toView:{"superview"), v10, v11}];
        v13 = v12;
        v15 = v14;
        [v8 bounds];
        v17 = v16;
        [v8 bounds];
        v19 = v18;
        [v9 setPosition:{v13, v15, v17}];
        [(SRHMediaViewsStore *)self scrollViewVisibleArea];
        v132.origin.x = v20;
        v132.origin.y = v21;
        v132.size.width = v22;
        v132.size.height = v23;
        v128.origin.x = v13;
        v128.origin.y = v15;
        v128.size.width = v17;
        v128.size.height = v19;
        v129 = CGRectIntersection(v128, v132);
        width = v129.size.width;
        height = v129.size.height;
        if (CGRectIsNull(v129))
        {
          v26 = 0.0;
        }

        else
        {
          v26 = width * height;
        }

        [v8 bounds];
        v28 = v27;
        [v8 bounds];
        if (v26 < v28 * v29 * 0.5)
        {
          [v92 addObject:v8];
          if (!v89)
          {
            [v87 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithBool:", 0), objc_msgSend(objc_msgSend(v9, "uuid"), "UUIDString")}];
            v30 = _MergedGlobals_2;
            if (os_log_type_enabled(_MergedGlobals_2, OS_LOG_TYPE_INFO))
            {
              scrollView = self->_scrollView;
              *buf = 134218499;
              *&buf[4] = v8;
              *&buf[12] = 2113;
              *&buf[14] = v9;
              *&buf[22] = 2048;
              v124 = scrollView;
              _os_log_impl(&dword_2655E8000, v30, OS_LOG_TYPE_INFO, "OffScreen event for view:%p, %{private}@, scrollView:%p", buf, 0x20u);
            }
          }
        }
      }

      v5 = [(NSEnumerator *)v4 countByEnumeratingWithState:&v106 objects:v121 count:16];
    }

    while (v5);
  }

  v93 = objc_alloc_init(MEMORY[0x277CBEB58]);
  obj = [(NSMapTable *)self->_offScreenMediaViews keyEnumerator];
  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  v32 = [(NSEnumerator *)obj countByEnumeratingWithState:&v102 objects:v120 count:16];
  if (v32)
  {
    v91 = *v103;
    *&v33 = 134218499;
    v86 = v33;
    do
    {
      v34 = 0;
      do
      {
        if (*v103 != v91)
        {
          objc_enumerationMutation(obj);
        }

        v35 = *(*(&v102 + 1) + 8 * v34);
        [v35 bounds];
        if (v36 > 67.0)
        {
          [v35 bounds];
          if (v37 > 67.0)
          {
            v88 = [(NSMapTable *)self->_offScreenMediaViews objectForKey:v35];
            [v35 bounds];
            [v35 convertPoint:-[UIScrollView superview](self->_scrollView toView:{"superview"), v38, v39}];
            v41 = v40;
            v43 = v42;
            [v35 bounds];
            v45 = v44;
            [v35 bounds];
            v47 = v46;
            [(SRHMediaViewsStore *)self scrollViewVisibleArea];
            v133.origin.x = v48;
            v133.origin.y = v49;
            v133.size.width = v50;
            v133.size.height = v51;
            v130.origin.x = v41;
            v130.origin.y = v43;
            v130.size.width = v45;
            v130.size.height = v47;
            v131 = CGRectIntersection(v130, v133);
            v52 = v131.size.width;
            v53 = v131.size.height;
            v54 = CGRectIsNull(v131) ? 0.0 : v52 * v53;
            [v35 bounds];
            v56 = v55;
            [v35 bounds];
            if (v54 >= v56 * v57 * 0.5)
            {
              offScreenMediaViews = self->_offScreenMediaViews;
              onScreenMediaViews = self->_onScreenMediaViews;
              v60 = [(NSMapTable *)onScreenMediaViews keyEnumerator];
              v116 = 0u;
              v117 = 0u;
              v114 = 0u;
              v115 = 0u;
              v61 = [(NSEnumerator *)v60 countByEnumeratingWithState:&v114 objects:buf count:16];
              if (v61)
              {
                v62 = *v115;
LABEL_32:
                v63 = 0;
                while (1)
                {
                  if (*v115 != v62)
                  {
                    objc_enumerationMutation(v60);
                  }

                  [-[NSMapTable objectForKey:](onScreenMediaViews objectForKey:{*(*(&v114 + 1) + 8 * v63)), "position"}];
                  if (isAreaOccupied(v64, v65, v66, v67, v41, v43, v45, v47))
                  {
                    break;
                  }

                  if (v61 == ++v63)
                  {
                    v61 = [(NSEnumerator *)v60 countByEnumeratingWithState:&v114 objects:buf count:16];
                    if (v61)
                    {
                      goto LABEL_32;
                    }

                    goto LABEL_38;
                  }
                }
              }

              else
              {
LABEL_38:
                v112 = 0u;
                v113 = 0u;
                v110 = 0u;
                v111 = 0u;
                v68 = [v93 countByEnumeratingWithState:&v110 objects:v122 count:16];
                if (v68)
                {
                  v69 = *v111;
LABEL_40:
                  v70 = 0;
                  while (1)
                  {
                    if (*v111 != v69)
                    {
                      objc_enumerationMutation(v93);
                    }

                    [-[NSMapTable objectForKey:](offScreenMediaViews objectForKey:{*(*(&v110 + 1) + 8 * v70)), "position"}];
                    if (isAreaOccupied(v71, v72, v73, v74, v41, v43, v45, v47))
                    {
                      break;
                    }

                    if (v68 == ++v70)
                    {
                      v68 = [v93 countByEnumeratingWithState:&v110 objects:v122 count:16];
                      if (v68)
                      {
                        goto LABEL_40;
                      }

                      goto LABEL_46;
                    }
                  }
                }

                else
                {
LABEL_46:
                  [v93 addObject:v35];
                  [v88 setPosition:{v41, v43, v45, v47}];
                  if (!v89)
                  {
                    [v87 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithBool:", 1), objc_msgSend(objc_msgSend(v88, "uuid"), "UUIDString")}];
                    v75 = _MergedGlobals_2;
                    if (os_log_type_enabled(_MergedGlobals_2, OS_LOG_TYPE_INFO))
                    {
                      v76 = self->_scrollView;
                      *buf = v86;
                      *&buf[4] = v35;
                      *&buf[12] = 2113;
                      *&buf[14] = v88;
                      *&buf[22] = 2048;
                      v124 = v76;
                      _os_log_impl(&dword_2655E8000, v75, OS_LOG_TYPE_INFO, "OnScreen event for view:%p, %{private}@, scrollView:%p", buf, 0x20u);
                    }
                  }
                }
              }
            }
          }
        }

        ++v34;
      }

      while (v34 != v32);
      v77 = [(NSEnumerator *)obj countByEnumeratingWithState:&v102 objects:v120 count:16];
      v32 = v77;
    }

    while (v77);
  }

  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v78 = [v92 countByEnumeratingWithState:&v98 objects:v119 count:16];
  if (v78)
  {
    v79 = *v99;
    do
    {
      for (j = 0; j != v78; ++j)
      {
        if (*v99 != v79)
        {
          objc_enumerationMutation(v92);
        }

        v81 = *(*(&v98 + 1) + 8 * j);
        [(NSMapTable *)self->_offScreenMediaViews setObject:[(NSMapTable *)self->_onScreenMediaViews objectForKey:v81] forKey:v81];
        [(NSMapTable *)self->_onScreenMediaViews removeObjectForKey:v81];
      }

      v78 = [v92 countByEnumeratingWithState:&v98 objects:v119 count:16];
    }

    while (v78);
  }

  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v82 = [v93 countByEnumeratingWithState:&v94 objects:v118 count:16];
  if (v82)
  {
    v83 = *v95;
    do
    {
      for (k = 0; k != v82; ++k)
      {
        if (*v95 != v83)
        {
          objc_enumerationMutation(v93);
        }

        v85 = *(*(&v94 + 1) + 8 * k);
        [(NSMapTable *)self->_onScreenMediaViews setObject:[(NSMapTable *)self->_offScreenMediaViews objectForKey:v85] forKey:v85];
        [(NSMapTable *)self->_offScreenMediaViews removeObjectForKey:v85];
      }

      v82 = [v93 countByEnumeratingWithState:&v94 objects:v118 count:16];
    }

    while (v82);
  }

  -[SRHMediaViewsStore _writeMediaEventsToBiome:](self, "_writeMediaEventsToBiome:", [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v87]);
}

- (void)removeAllViews
{
  [(SRHMediaViewsStore *)self markViewsAsOffScreen];
  [(NSMapTable *)self->_onScreenMediaViews removeAllObjects];
  offScreenMediaViews = self->_offScreenMediaViews;

  [(NSMapTable *)offScreenMediaViews removeAllObjects];
}

- (void)_writeMediaEventsToBiome:(id)a3
{
  if ([a3 count])
  {
    Current = CFAbsoluteTimeGetCurrent();
    v6 = [(NSXPCConnection *)[(SRHMediaViewsStore *)self connection] remoteObjectProxyWithErrorHandler:&__block_literal_global_0];

    [v6 writeMediaEvents:a3 withTimestamp:&__block_literal_global_49 reply:Current];
  }
}

void __47__SRHMediaViewsStore__writeMediaEventsToBiome___block_invoke(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = _MergedGlobals_2;
  if (os_log_type_enabled(_MergedGlobals_2, OS_LOG_TYPE_ERROR))
  {
    v4 = 138477827;
    v5 = a2;
    _os_log_error_impl(&dword_2655E8000, v3, OS_LOG_TYPE_ERROR, "Failed to set up connection with mediaEventsHelper sevice because of %{private}@", &v4, 0xCu);
  }
}

void __47__SRHMediaViewsStore__writeMediaEventsToBiome___block_invoke_47(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = _MergedGlobals_2;
    if (os_log_type_enabled(_MergedGlobals_2, OS_LOG_TYPE_ERROR))
    {
      v4 = 138477827;
      v5 = a2;
      _os_log_error_impl(&dword_2655E8000, v3, OS_LOG_TYPE_ERROR, "Failed to write to Biome because of %{private}@", &v4, 0xCu);
    }
  }
}

@end