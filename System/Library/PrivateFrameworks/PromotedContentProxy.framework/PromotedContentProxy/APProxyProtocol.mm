@interface APProxyProtocol
+ (APProxyProtocolProperties)properties;
+ (BOOL)canInitWithRequest:(id)request;
+ (id)canonicalRequestForRequest:(id)request;
+ (void)invalidateProxyDemultiplexerSessionForId:(id)id;
+ (void)setProxyURL:(id)l;
+ (void)start;
+ (void)stop;
- (id)_currentRunLoopModes;
- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data;
- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler;
- (void)dealloc;
- (void)startLoading;
- (void)stopLoading;
@end

@implementation APProxyProtocol

+ (APProxyProtocolProperties)properties
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_260F12BEC;
  block[3] = &unk_279AC8BA0;
  block[4] = self;
  if (qword_280E74678 != -1)
  {
    dispatch_once(&qword_280E74678, block);
  }

  v2 = qword_280E74670;

  return v2;
}

+ (void)start
{
  objc_msgSend_registerClass_(MEMORY[0x277CBAB98], a2, self, v2, v3);
  objc_msgSend_registerSchemeForCustomProtocol_(MEMORY[0x277CE37F8], v4, @"pc-x-tag-http", v5, v6);
  objc_msgSend_registerSchemeForCustomProtocol_(MEMORY[0x277CE37F8], v7, @"pc-x-tag-https", v8, v9);
  objc_msgSend_registerSchemeForCustomProtocol_(MEMORY[0x277CE37F8], v10, @"pc-video-http", v11, v12);
  objc_msgSend_registerSchemeForCustomProtocol_(MEMORY[0x277CE37F8], v13, @"pc-video-https", v14, v15);
  *MEMORY[0x277CE9768] = 1;
  v16 = APLogForCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 0;
    _os_log_impl(&dword_260F10000, v16, OS_LOG_TYPE_DEFAULT, "Proxy has started.", v17, 2u);
  }
}

+ (void)stop
{
  *MEMORY[0x277CE9768] = 0;
  objc_msgSend_unregisterClass_(MEMORY[0x277CBAB98], a2, self, v2, v3);
  objc_msgSend_unregisterSchemeForCustomProtocol_(MEMORY[0x277CE37F8], v4, @"pc-x-tag-http", v5, v6);
  objc_msgSend_unregisterSchemeForCustomProtocol_(MEMORY[0x277CE37F8], v7, @"pc-x-tag-https", v8, v9);
  objc_msgSend_unregisterSchemeForCustomProtocol_(MEMORY[0x277CE37F8], v10, @"pc-video-http", v11, v12);
  v16 = MEMORY[0x277CE37F8];

  objc_msgSend_unregisterSchemeForCustomProtocol_(v16, v13, @"pc-video-https", v14, v15);
}

+ (void)setProxyURL:(id)l
{
  v29 = *MEMORY[0x277D85DE8];
  lCopy = l;
  if (objc_msgSend_length(lCopy, v5, v6, v7, v8))
  {
    v16 = objc_msgSend_URLWithString_(MEMORY[0x277CBEBC0], v9, lCopy, v10, v11);
    if (v16)
    {
      v17 = objc_msgSend_properties(self, v12, v13, v14, v15);
      v22 = objc_msgSend_proxySessionConfigurationProvider(v17, v18, v19, v20, v21);
      objc_msgSend_setProxyURL_(v22, v23, v16, v24, v25);
    }

    else
    {
      v17 = APLogForCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v27 = 138543362;
        v28 = lCopy;
        _os_log_impl(&dword_260F10000, v17, OS_LOG_TYPE_ERROR, "Could not form valid URL from %{public}@", &v27, 0xCu);
      }
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

+ (void)invalidateProxyDemultiplexerSessionForId:(id)id
{
  idCopy = id;
  v4 = objc_opt_class();
  v17 = objc_msgSend_properties(v4, v5, v6, v7, v8);
  v13 = objc_msgSend_sessionDemultiplexerManager(v17, v9, v10, v11, v12);
  objc_msgSend_unregisterSessionDemultiplexerWithIdentifier_(v13, v14, idCopy, v15, v16);
}

- (void)dealloc
{
  v6 = objc_msgSend_sessionDemux(self, a2, v2, v3, v4);
  v11 = objc_msgSend_task(self, v7, v8, v9, v10);
  objc_msgSend_removeTask_(v6, v12, v11, v13, v14);

  v15.receiver = self;
  v15.super_class = APProxyProtocol;
  [(NSURLProtocol *)&v15 dealloc];
}

+ (BOOL)canInitWithRequest:(id)request
{
  requestCopy = request;
  if (objc_msgSend_recursiveRequestFlag(requestCopy, v4, v5, v6, v7))
  {
    isEqualToString = 0;
  }

  else
  {
    v13 = objc_msgSend_URL(requestCopy, v8, v9, v10, v11);
    v18 = objc_msgSend_scheme(v13, v14, v15, v16, v17);
    if (objc_msgSend_isEqualToString_(v18, v19, @"pc-x-tag-http", v20, v21))
    {
      isEqualToString = 1;
    }

    else
    {
      v26 = objc_msgSend_URL(requestCopy, v22, v23, v24, v25);
      v31 = objc_msgSend_scheme(v26, v27, v28, v29, v30);
      if (objc_msgSend_isEqualToString_(v31, v32, @"pc-x-tag-https", v33, v34))
      {
        isEqualToString = 1;
      }

      else
      {
        v39 = objc_msgSend_URL(requestCopy, v35, v36, v37, v38);
        v44 = objc_msgSend_scheme(v39, v40, v41, v42, v43);
        if (objc_msgSend_isEqualToString_(v44, v45, @"pc-video-http", v46, v47))
        {
          isEqualToString = 1;
        }

        else
        {
          v52 = objc_msgSend_URL(requestCopy, v48, v49, v50, v51);
          v57 = objc_msgSend_scheme(v52, v53, v54, v55, v56);
          isEqualToString = objc_msgSend_isEqualToString_(v57, v58, @"pc-video-https", v59, v60);
        }
      }
    }
  }

  return isEqualToString;
}

+ (id)canonicalRequestForRequest:(id)request
{
  requestCopy = request;
  v8 = objc_msgSend_mutableCopy(requestCopy, v4, v5, v6, v7);
  v13 = objc_msgSend_URL(requestCopy, v9, v10, v11, v12);
  v18 = objc_msgSend_scheme(v13, v14, v15, v16, v17);

  if (objc_msgSend_isEqualToString_(v18, v19, @"pc-x-tag-http", v20, v21))
  {
    v26 = @"http";
LABEL_3:
    v27 = objc_msgSend_URL(requestCopy, v22, v23, v24, v25);
    v31 = objc_msgSend_changeSchemeToString_(v27, v28, v26, v29, v30);

LABEL_4:
    objc_msgSend_setRequestType_(v8, v32, 1, v33, v34);
    objc_msgSend_setURL_(v8, v35, v31, v36, v37);
    goto LABEL_18;
  }

  if (objc_msgSend_isEqualToString_(v18, v22, @"pc-video-http", v24, v25))
  {
    v39 = @"http";
  }

  else
  {
    if (objc_msgSend_isEqualToString_(v18, v32, @"pc-x-tag-https", v33, v34))
    {
      v26 = @"https";
      goto LABEL_3;
    }

    if (!objc_msgSend_isEqualToString_(v18, v22, @"pc-video-https", v24, v25))
    {
      v31 = 0;
      goto LABEL_4;
    }

    v39 = @"https";
  }

  v40 = objc_msgSend_URL(requestCopy, v32, v38, v33, v34);
  v31 = objc_msgSend_changeSchemeToString_(v40, v41, v39, v42, v43);

  objc_msgSend_setRequestType_(v8, v44, 2, v45, v46);
  v51 = objc_msgSend_absoluteString(v31, v47, v48, v49, v50);
  v56 = objc_msgSend_stringByRemovingPercentEncoding(v51, v52, v53, v54, v55);

  if (v56)
  {
    v60 = objc_msgSend_URLWithString_(MEMORY[0x277CBEBC0], v57, v56, v58, v59);
    v64 = v60;
    if (v60)
    {
      objc_msgSend_setURL_(v8, v61, v60, v62, v63);
    }

    else
    {
      objc_msgSend_setURL_(v8, v61, v31, v62, v63);
    }
  }

  else
  {
    objc_msgSend_setURL_(v8, v57, v31, v58, v59);
  }

LABEL_18:

  return v8;
}

- (void)startLoading
{
  v212 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_request(self, a2, v2, v3, v4);
  v11 = objc_msgSend_requestType(v6, v7, v8, v9, v10);
  objc_msgSend_setRequestType_(self, v12, v11, v13, v14);

  objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x277CBEAA8], v15, v16, v17, v18);
  objc_msgSend_setStartTime_(self, v19, v20, v21, v22);
  v27 = objc_msgSend_currentThread(MEMORY[0x277CCACC8], v23, v24, v25, v26);
  objc_msgSend_setClientThread_(self, v28, v27, v29, v30);

  v35 = objc_msgSend_requestType(self, v31, v32, v33, v34);
  v40 = objc_msgSend_request(self, v36, v37, v38, v39);
  v45 = v40;
  if (v35 == 1)
  {
    v46 = objc_msgSend_adIdentifier(v40, v41, v42, v43, v44);

    v51 = objc_msgSend_request(self, v47, v48, v49, v50);
    v45 = objc_msgSend_maximumRequestCount(v51, v52, v53, v54, v55);

    if (v45)
    {
      v60 = objc_msgSend_intValue(v45, v56, v57, v58, v59);
      goto LABEL_6;
    }
  }

  else
  {
    v61 = objc_msgSend_URL(v40, v41, v42, v43, v44);
    v46 = objc_msgSend_videoAdIdentifier(v61, v62, v63, v64, v65);
  }

  v60 = -1;
LABEL_6:

  if (objc_msgSend_length(v46, v66, v67, v68, v69))
  {
    v74 = objc_msgSend_request(self, v70, v71, v72, v73);
    v79 = objc_msgSend_mutableCopy(v74, v75, v76, v77, v78);

    if (objc_msgSend_requestType(self, v80, v81, v82, v83) == 2)
    {
      v88 = objc_msgSend_URL(v79, v84, v85, v86, v87);
      v93 = objc_msgSend_removeVideoAdIdentifier(v88, v89, v90, v91, v92);
      objc_msgSend_setURL_(v79, v94, v93, v95, v96);
    }

    objc_msgSend_setRecursiveRequestFlag(v79, v84, v85, v86, v87);
    v101 = objc_msgSend__currentRunLoopModes(self, v97, v98, v99, v100);
    objc_msgSend_setModes_(self, v102, v101, v103, v104);

    v105 = objc_opt_class();
    v110 = objc_msgSend_properties(v105, v106, v107, v108, v109);
    v115 = objc_msgSend_sessionDemultiplexerManager(v110, v111, v112, v113, v114);
    v118 = objc_msgSend_sessionDemultiplexerForAdByIdentifier_maximumRequestCount_(v115, v116, v46, v60, v117);
    objc_msgSend_setSessionDemux_(self, v119, v118, v120, v121);

    v126 = objc_msgSend_sessionDemux(self, v122, v123, v124, v125);
    v131 = objc_msgSend_modes(self, v127, v128, v129, v130);
    v133 = objc_msgSend_dataTaskWithRequest_delegate_modes_(v126, v132, v79, self, v131);
    objc_msgSend_setTask_(self, v134, v133, v135, v136);

    v141 = objc_msgSend_task(self, v137, v138, v139, v140);
    objc_msgSend_setTaskDescription_(v141, v142, v46, v143, v144);

    v145 = APLogForCategory();
    if (os_log_type_enabled(v145, OS_LOG_TYPE_DEFAULT))
    {
      v202 = objc_msgSend_task(self, v146, v147, v148, v149);
      v154 = objc_msgSend_taskDescription(v202, v150, v151, v152, v153);
      objc_msgSend_task(self, v155, v156, v157, v158);
      v159 = v203 = v115;
      v164 = objc_msgSend_description(v159, v160, v161, v162, v163);
      v169 = objc_msgSend_URL(v79, v165, v166, v167, v168);
      objc_msgSend_absoluteString(v169, v170, v171, v172, v173);
      v175 = v174 = v110;
      *buf = 136643587;
      v205 = "[APProxyProtocol startLoading]";
      v206 = 2114;
      v207 = v154;
      v208 = 2114;
      v209 = v164;
      v210 = 2114;
      v211 = v175;
      _os_log_impl(&dword_260F10000, v145, OS_LOG_TYPE_DEFAULT, "%{sensitive}s: %{public}@ starting request %{public}@ for %{public}@", buf, 0x2Au);

      v110 = v174;
      v115 = v203;
    }

    v180 = objc_msgSend_task(self, v176, v177, v178, v179);

    if (v180)
    {
      v185 = objc_msgSend_task(self, v181, v182, v183, v184);
      objc_msgSend_resume(v185, v186, v187, v188, v189);
    }

    else
    {
      v185 = objc_msgSend_client(self, v181, v182, v183, v184);
      v198 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v197, *MEMORY[0x277CCA050], 3328, 0);
      objc_msgSend_URLProtocol_didFailWithError_(v185, v199, self, v198, v200);
    }
  }

  else
  {
    v79 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v70, *MEMORY[0x277CCA050], 3328, 0);
    v194 = objc_msgSend_client(self, v190, v191, v192, v193);
    objc_msgSend_URLProtocol_didFailWithError_(v194, v195, self, v79, v196);
  }

  v201 = *MEMORY[0x277D85DE8];
}

- (void)stopLoading
{
  v62 = *MEMORY[0x277D85DE8];
  v3 = APLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_msgSend_task(self, v4, v5, v6, v7);
    v13 = objc_msgSend_taskDescription(v8, v9, v10, v11, v12);
    objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x277CBEAA8], v14, v15, v16, v17);
    v19 = v18;
    objc_msgSend_startTime(self, v20, v21, v22, v23);
    v56 = 136643331;
    v57 = "[APProxyProtocol stopLoading]";
    v58 = 2114;
    v59 = v13;
    v60 = 2048;
    v61 = v19 - v24;
    _os_log_impl(&dword_260F10000, v3, OS_LOG_TYPE_DEFAULT, "%{sensitive}s: %{public}@ Request stopped after: (elapsed %.1f)", &v56, 0x20u);
  }

  v29 = objc_msgSend_task(self, v25, v26, v27, v28);

  if (v29)
  {
    v34 = objc_msgSend_task(self, v30, v31, v32, v33);
    objc_msgSend_cancel(v34, v35, v36, v37, v38);

    v43 = objc_msgSend_sessionDemux(self, v39, v40, v41, v42);
    v48 = objc_msgSend_task(self, v44, v45, v46, v47);
    objc_msgSend_removeTask_(v43, v49, v48, v50, v51);

    objc_msgSend_setTask_(self, v52, 0, v53, v54);
  }

  v55 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler
{
  handlerCopy = handler;
  responseCopy = response;
  v13 = objc_msgSend_client(self, v9, v10, v11, v12);
  objc_msgSend_URLProtocol_didReceiveResponse_cacheStoragePolicy_(v13, v14, self, responseCopy, 2);

  handlerCopy[2](handlerCopy, 1);
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data
{
  dataCopy = data;
  v13 = objc_msgSend_client(self, v7, v8, v9, v10);
  objc_msgSend_URLProtocol_didLoadData_(v13, v11, self, dataCopy, v12);
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  v74 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  taskCopy = task;
  errorCopy = error;
  if (!errorCopy)
  {
    v30 = objc_msgSend_response(taskCopy, v10, v11, v12, v13);
    v49 = objc_msgSend_client(self, v45, v46, v47, v48);
    objc_msgSend_URLProtocolDidFinishLoading_(v49, v50, self, v51, v52);

    if (v30 && objc_msgSend_statusCode(v30, v53, v54, v55, v56) != 200)
    {
      v57 = APLogForCategory();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        v62 = objc_msgSend_taskDescription(taskCopy, v58, v59, v60, v61);
        v68 = 136643331;
        v69 = "[APProxyProtocol URLSession:task:didCompleteWithError:]";
        v70 = 2114;
        v71 = v62;
        v72 = 2050;
        v73 = objc_msgSend_statusCode(v30, v63, v64, v65, v66);
        _os_log_impl(&dword_260F10000, v57, OS_LOG_TYPE_DEFAULT, "%{sensitive}s: %{public}@ -- Finished load with HTTP error: %{public}ld", &v68, 0x20u);
      }
    }

    goto LABEL_12;
  }

  v15 = APLogForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v20 = objc_msgSend_taskDescription(taskCopy, v16, v17, v18, v19);
    v25 = objc_msgSend_localizedDescription(errorCopy, v21, v22, v23, v24);
    v68 = 136643331;
    v69 = "[APProxyProtocol URLSession:task:didCompleteWithError:]";
    v70 = 2114;
    v71 = v20;
    v72 = 2114;
    v73 = v25;
    _os_log_impl(&dword_260F10000, v15, OS_LOG_TYPE_DEFAULT, "%{sensitive}s: %{public}@ -- Finished load with error: %{public}@", &v68, 0x20u);
  }

  v30 = objc_msgSend_domain(errorCopy, v26, v27, v28, v29);
  if (objc_msgSend_isEqual_(v30, v31, *MEMORY[0x277CCA738], v32, v33))
  {
LABEL_12:

    goto LABEL_13;
  }

  v38 = objc_msgSend_code(errorCopy, v34, v35, v36, v37);

  if (v38 != -999)
  {
    v30 = objc_msgSend_client(self, v39, v40, v41, v42);
    objc_msgSend_URLProtocol_didFailWithError_(v30, v43, self, errorCopy, v44);
    goto LABEL_12;
  }

LABEL_13:

  v67 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler
{
  v164 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  redirectionCopy = redirection;
  requestCopy = request;
  handlerCopy = handler;
  v19 = objc_msgSend_requestType(self, v15, v16, v17, v18);
  v20 = APLogForCategory();
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_INFO);
  if (v19 == 2)
  {
    if (v21)
    {
      v150 = objc_msgSend_currentRequest(taskCopy, v22, v23, v24, v25);
      v148 = objc_msgSend_URL(v150, v26, v27, v28, v29);
      v34 = objc_msgSend_host(v148, v30, v31, v32, v33);
      v146 = objc_msgSend_URL(requestCopy, v35, v36, v37, v38);
      v43 = objc_msgSend_host(v146, v39, v40, v41, v42);
      v48 = objc_msgSend_currentRequest(taskCopy, v44, v45, v46, v47);
      v53 = objc_msgSend_URL(v48, v49, v50, v51, v52);
      objc_msgSend_absoluteString(v53, v54, v55, v56, v57);
      v58 = v152 = redirectionCopy;
      objc_msgSend_URL(requestCopy, v59, v60, v61, v62);
      v63 = v154 = taskCopy;
      v68 = objc_msgSend_absoluteString(v63, v64, v65, v66, v67);
      *buf = 138544130;
      v157 = v34;
      v158 = 2114;
      v159 = v43;
      v160 = 2114;
      v161 = v58;
      v162 = 2114;
      v163 = v68;
      _os_log_impl(&dword_260F10000, v20, OS_LOG_TYPE_INFO, "APProxyProtocol: A redirect '%{public}@'->'%{public}@' has been received. Original URL:\n%{public}@\nRedirected URL:\n%{public}@", buf, 0x2Au);

      taskCopy = v154;
      redirectionCopy = v152;
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, requestCopy);
    }
  }

  else
  {
    if (v21)
    {
      v151 = objc_msgSend_currentRequest(taskCopy, v22, v23, v24, v25);
      v149 = objc_msgSend_URL(v151, v69, v70, v71, v72);
      v77 = objc_msgSend_host(v149, v73, v74, v75, v76);
      v147 = objc_msgSend_URL(requestCopy, v78, v79, v80, v81);
      objc_msgSend_host(v147, v82, v83, v84, v85);
      v86 = v153 = redirectionCopy;
      v145 = objc_msgSend_currentRequest(taskCopy, v87, v88, v89, v90);
      objc_msgSend_URL(v145, v91, v92, v93, v94);
      v95 = v155 = taskCopy;
      v100 = objc_msgSend_absoluteString(v95, v96, v97, v98, v99);
      v105 = objc_msgSend_URL(requestCopy, v101, v102, v103, v104);
      v110 = objc_msgSend_absoluteString(v105, v106, v107, v108, v109);
      *buf = 138544130;
      v157 = v77;
      v158 = 2114;
      v159 = v86;
      v160 = 2114;
      v161 = v100;
      v162 = 2114;
      v163 = v110;
      _os_log_impl(&dword_260F10000, v20, OS_LOG_TYPE_INFO, "APProxyProtocol: Blocked redirect '%{public}@'->'%{public}@'. Original URL:\n%{public}@\nRedirected URL:\n%{public}@", buf, 0x2Au);

      taskCopy = v155;
      redirectionCopy = v153;
    }

    v115 = objc_msgSend_mutableCopy(requestCopy, v111, v112, v113, v114);
    objc_msgSend_removeRecursiveRequestFlag(v115, v116, v117, v118, v119);
    v124 = objc_msgSend_client(self, v120, v121, v122, v123);
    objc_msgSend_URLProtocol_wasRedirectedToRequest_redirectResponse_(v124, v125, self, v115, redirectionCopy);

    v130 = objc_msgSend_task(self, v126, v127, v128, v129);
    objc_msgSend_cancel(v130, v131, v132, v133, v134);

    v139 = objc_msgSend_client(self, v135, v136, v137, v138);
    v141 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v140, *MEMORY[0x277CCA050], 3072, 0);
    objc_msgSend_URLProtocol_didFailWithError_(v139, v142, self, v141, v143);

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 0);
    }
  }

  v144 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  v69 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  challengeCopy = challenge;
  handlerCopy = handler;
  v11 = APLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v16 = objc_msgSend_currentRequest(taskCopy, v12, v13, v14, v15);
    v21 = objc_msgSend_URL(v16, v17, v18, v19, v20);
    v26 = objc_msgSend_description(v21, v22, v23, v24, v25);
    v67 = 138543362;
    v68 = v26;
    _os_log_impl(&dword_260F10000, v11, OS_LOG_TYPE_DEBUG, "Challenge received for url session with request to %{public}@.", &v67, 0xCu);
  }

  v31 = objc_msgSend_failureResponse(challengeCopy, v27, v28, v29, v30);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_11;
  }

  v37 = objc_msgSend_failureResponse(challengeCopy, v33, v34, v35, v36);
  v42 = objc_msgSend_statusCode(v37, v38, v39, v40, v41);

  v43 = APLogForCategory();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
  {
    v67 = 134217984;
    v68 = v42;
    _os_log_impl(&dword_260F10000, v43, OS_LOG_TYPE_DEBUG, "Challenge failure is related to url response with status code: %ld.", &v67, 0xCu);
  }

  if (v42 == 407)
  {
    v44 = objc_opt_class();
    v49 = objc_msgSend_properties(v44, v45, v46, v47, v48);
    v54 = objc_msgSend_proxyURLCredentialService(v49, v50, v51, v52, v53);

    v59 = objc_msgSend_originalRequest(taskCopy, v55, v56, v57, v58);
    v62 = objc_msgSend_signedCredentialForRequest_withPersistence_(v54, v60, v59, 1, v61);

    v63 = APLogForCategory();
    v64 = v63;
    if (v62)
    {
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v67) = 0;
        _os_log_impl(&dword_260F10000, v64, OS_LOG_TYPE_DEBUG, "Signed credential was received for challenge.", &v67, 2u);
      }

      handlerCopy[2](handlerCopy, 0, v62);
    }

    else
    {
      if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v67) = 0;
        _os_log_impl(&dword_260F10000, v64, OS_LOG_TYPE_ERROR, "Signed credential was not received for challenge.", &v67, 2u);
      }

      handlerCopy[2](handlerCopy, 2, 0);
    }
  }

  else
  {
LABEL_11:
    v65 = APLogForCategory();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v67) = 0;
      _os_log_impl(&dword_260F10000, v65, OS_LOG_TYPE_DEBUG, "Challenge does not require proxy authentication.", &v67, 2u);
    }

    handlerCopy[2](handlerCopy, 1, 0);
  }

  v66 = *MEMORY[0x277D85DE8];
}

- (id)_currentRunLoopModes
{
  v4 = *MEMORY[0x277CBE640];
  v5 = objc_msgSend_arrayWithObject_(MEMORY[0x277CBEB18], a2, *MEMORY[0x277CBE640], v2, v3);
  v10 = objc_msgSend_currentRunLoop(MEMORY[0x277CBEB88], v6, v7, v8, v9);
  v15 = objc_msgSend_currentMode(v10, v11, v12, v13, v14);

  if (v15 && (objc_msgSend_isEqualToString_(v15, v16, v4, v18, v19) & 1) == 0)
  {
    objc_msgSend_addObject_(v5, v16, v15, v18, v19);
  }

  v20 = objc_msgSend_copy(v5, v16, v17, v18, v19);

  return v20;
}

@end