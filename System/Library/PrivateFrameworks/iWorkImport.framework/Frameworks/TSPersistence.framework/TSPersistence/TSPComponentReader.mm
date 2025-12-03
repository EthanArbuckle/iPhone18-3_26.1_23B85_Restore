@interface TSPComponentReader
- (BOOL)componentParser:(id)parser didReadArchiveInfo:(const void *)info stream:(DispatchDataInputStream *)stream error:(id *)error;
- (TSPComponentReader)initWithComponent:(id)component finalizeHandlerQueue:(id)queue delegate:(id)delegate;
- (TSPComponentReader)initWithComponent:(id)component finalizeHandlerQueue:(id)queue delegate:(id)delegate readChannel:(id)channel;
- (TSPComponentReader)initWithComponent:(id)component finalizeHandlerQueue:(id)queue delegate:(id)delegate readChannel:(id)channel ignoreUnknownContent:(BOOL)content ignoreVersionChecking:(BOOL)checking;
- (const)unknownObjectMessageInfo;
- (id)newUnarchiverWithArchiveInfo:(const void *)info stream:(DispatchDataInputStream *)stream isUnknownObject:(BOOL *)object;
- (id)newUnarchiverWithObjectIdentifier:(int64_t)identifier messageInfo:(const void *)info unarchiveClass:(Class)class message:(void *)message messageVersion:(unint64_t)version strongReferences:()unique_ptr<TSP:(std:(id)p :(BOOL)self0 default_delete<TSP::IdentifierMap<BOOL>>>)a8 :IdentifierMap<BOOL> unknownContent:hasAlternateMessages:;
- (id)unknownMessageFromMessageInfo:(const void *)info stream:(DispatchDataInputStream *)stream;
- (id)unknownObjectUnarchiverWithArchiveInfo:(const void *)info stream:(DispatchDataInputStream *)stream ignoreMessageData:(BOOL)data hasAlternateMessages:(BOOL)messages;
- (void)beginReadingWithCompletionQueue:(id)queue completion:(id)completion;
- (void)dealloc;
@end

@implementation TSPComponentReader

- (TSPComponentReader)initWithComponent:(id)component finalizeHandlerQueue:(id)queue delegate:(id)delegate
{
  componentCopy = component;
  queueCopy = queue;
  delegateCopy = delegate;
  v10 = MEMORY[0x277D81150];
  v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSPComponentReader initWithComponent:finalizeHandlerQueue:delegate:]");
  v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPComponentReader.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v15, v12, v14, 55, 0);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17);
  v18 = MEMORY[0x277CBEAD8];
  v20 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v19, @"%s: %s", "Do not call method", "[TSPComponentReader initWithComponent:finalizeHandlerQueue:delegate:]");
  v22 = objc_msgSend_exceptionWithName_reason_userInfo_(v18, v21, *MEMORY[0x277CBE658], v20, 0);
  v23 = v22;

  objc_exception_throw(v22);
}

- (TSPComponentReader)initWithComponent:(id)component finalizeHandlerQueue:(id)queue delegate:(id)delegate readChannel:(id)channel
{
  componentCopy = component;
  queueCopy = queue;
  delegateCopy = delegate;
  channelCopy = channel;
  v15 = objc_msgSend_contextForReader_(delegateCopy, v14, self);
  v18 = objc_msgSend_ignoreUnknownContentWhileReading(v15, v16, v17);
  v21 = objc_msgSend_ignoreVersionCheckingWhileReading(v15, v19, v20);
  Channel_ignoreUnknownContent_ignoreVersionChecking = objc_msgSend_initWithComponent_finalizeHandlerQueue_delegate_readChannel_ignoreUnknownContent_ignoreVersionChecking_(self, v22, componentCopy, queueCopy, delegateCopy, channelCopy, v18, v21);

  return Channel_ignoreUnknownContent_ignoreVersionChecking;
}

- (TSPComponentReader)initWithComponent:(id)component finalizeHandlerQueue:(id)queue delegate:(id)delegate readChannel:(id)channel ignoreUnknownContent:(BOOL)content ignoreVersionChecking:(BOOL)checking
{
  checkingCopy = checking;
  contentCopy = content;
  componentCopy = component;
  queueCopy = queue;
  delegateCopy = delegate;
  channelCopy = channel;
  v29.receiver = self;
  v29.super_class = TSPComponentReader;
  v18 = [(TSPReader *)&v29 initWithComponent:componentCopy finalizeHandlerQueue:queueCopy delegate:delegateCopy];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_readChannel, channel);
    isReadingFromDocument = objc_msgSend_isReadingFromDocument(delegateCopy, v20, v21);
    if (contentCopy)
    {
      v25 = 2;
    }

    else
    {
      v25 = 0;
    }

    if (checkingCopy)
    {
      v26 = 4;
    }

    else
    {
      v26 = 0;
    }

    *&v19->_flags = v26 | v25 | isReadingFromDocument | *&v19->_flags & 0xF8;
    if (objc_msgSend_incompatibleVersion(componentCopy, v23, v24))
    {
      v27 = 8;
    }

    else
    {
      v27 = 0;
    }

    *&v19->_flags = *&v19->_flags & 0xF7 | v27;
  }

  return v19;
}

- (void)dealloc
{
  objc_msgSend_close(self->_readChannel, a2, v2);
  v4.receiver = self;
  v4.super_class = TSPComponentReader;
  [(TSPComponentReader *)&v4 dealloc];
}

- (void)beginReadingWithCompletionQueue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  v8 = [TSPComponentParser alloc];
  v10 = objc_msgSend_initWithDelegate_(v8, v9, self);
  if (v10)
  {
    readChannel = self->_readChannel;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_276A73AAC;
    v14[3] = &unk_27A6E58D0;
    v14[4] = self;
    v15 = completionCopy;
    objc_msgSend_readWithChannel_completionQueue_completion_(v10, v12, readChannel, queueCopy, v14);
    v13 = v15;
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_276A73A94;
    block[3] = &unk_27A6E3480;
    v17 = completionCopy;
    dispatch_async(queueCopy, block);
    v13 = v17;
  }
}

- (BOOL)componentParser:(id)parser didReadArchiveInfo:(const void *)info stream:(DispatchDataInputStream *)stream error:(id *)error
{
  parserCopy = parser;
  if ((objc_msgSend_hasReadFailure(self, v11, v12) & 1) == 0)
  {
    if ((*&self->_flags & 1) != 0 && (v27 = *(info + 6), objc_msgSend_context(self, v13, v14), v28 = objc_claimAutoreleasedReturnValue(), objc_msgSend_objectForIdentifier_(v28, v29, v27), v30 = objc_claimAutoreleasedReturnValue(), v28, v30))
    {
      objc_msgSend_attemptedToReadInMemoryObject_objectIdentifier_(self, v13, v30, v27);
      v31 = sub_276A764C4(info);
      (*(stream->var0 + 4))(stream, v31);
    }

    else
    {
      v35 = 0;
      isUnknownObject = objc_msgSend_newUnarchiverWithArchiveInfo_stream_isUnknownObject_(self, v13, info, stream, &v35);
      if (isUnknownObject)
      {
        objc_msgSend_unarchiveObjectWithUnarchiver_(self, v16, isUnknownObject);
      }

      else if ((v35 & 1) == 0 || (*&self->_flags & 2) == 0)
      {
        goto LABEL_3;
      }
    }

    v21 = 1;
    goto LABEL_22;
  }

  v15 = sub_276A764C4(info);
  (*(stream->var0 + 4))(stream, v15);
LABEL_3:
  shouldProceedParsingOnFailure = objc_msgSend_shouldProceedParsingOnFailure(self, v16, v17);
  v21 = shouldProceedParsingOnFailure;
  if (error)
  {
    v22 = shouldProceedParsingOnFailure;
  }

  else
  {
    v22 = 1;
  }

  if ((v22 & 1) == 0)
  {
    if (!*error)
    {
      v23 = objc_msgSend_error(self, v19, v20);
      v25 = v23;
      if (v23)
      {
        v26 = v23;
        *error = v25;
      }

      else
      {
        v33 = objc_msgSend_tsp_readCorruptedDocumentErrorWithUserInfo_(MEMORY[0x277CCA9B8], v24, 0);
        *error = v33;
      }
    }

    v21 = 0;
  }

LABEL_22:

  return v21;
}

- (id)newUnarchiverWithArchiveInfo:(const void *)info stream:(DispatchDataInputStream *)stream isUnknownObject:(BOOL *)object
{
  v7 = objc_msgSend_context(self, a2, info);
  v162 = objc_msgSend_registry(v7, v8, v9);
  selfCopy = self;

  v12 = *(info + 8);
  v176 = v12;
  infoCopy = info;
  if (v12 >= 1)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = -1;
    v17 = -1;
    while (1)
    {
      v18 = *(infoCopy[5] + 8 * v13 + 8);
      v19 = *(v18 + 200);
      v20 = UnsafePointer(v18 + 24, v10);
      if (!v19)
      {
        v21 = v176;
        if (v12 == v176)
        {
          v12 = v13;
        }

        v22 = v14;
        goto LABEL_17;
      }

      v22 = v20;
      if (v20 >= v14)
      {
        if (!sub_276AC087C(v20))
        {
          v16 = v13;
          goto LABEL_16;
        }

        if ((*&selfCopy->_flags & 4) != 0 && v22 >= v15 && objc_msgSend_messagePrototypeForMessageType_(v162, v10, v19))
        {
          v15 = v22;
          v17 = v13;
        }
      }

      v22 = v14;
LABEL_16:
      v21 = v176;
LABEL_17:
      ++v13;
      v14 = v22;
      if (v21 == v13)
      {
        goto LABEL_20;
      }
    }
  }

  v15 = 0;
  v22 = 0;
  v17 = -1;
  v16 = -1;
LABEL_20:
  if ((*&selfCopy->_flags & 4) != 0)
  {
    if (v16 == -1)
    {
      v22 = v15;
      v16 = v17;
    }

    v23 = infoCopy;
  }

  else
  {
    v23 = infoCopy;
    if ((*&selfCopy->_flags & 8) != 0)
    {
      v22 = 0;
LABEL_29:
      v156 = *(v23 + 48);
      v26 = objc_msgSend_unknownObjectMessageInfo(selfCopy, v10, v11);
      v157 = v22;
      v27 = 0;
      v166 = -1;
      v170 = 1;
      goto LABEL_37;
    }
  }

  v166 = v16;
  if (v16 == -1)
  {
    goto LABEL_29;
  }

  if (sub_276AC087C(v22))
  {
    v25 = 1;
  }

  else
  {
    v28 = *(v23 + 56);
    if (v28 == 1 && v12 <= v16)
    {
      if (UnsafePointer != -1)
      {
        sub_276BD5A48();
      }

      LOBYTE(v28) = 0;
      v12 = v176;
    }

    v25 = v28 ^ 1;
  }

  v170 = v25;
  v156 = *(v23 + 48);
  v157 = v22;
  v26 = *(*(v23 + 40) + 8 * v16 + 8);
  v27 = 1;
LABEL_37:
  v161 = v26;
  v29 = *(v26 + 200);
  v30 = objc_msgSend_messagePrototypeForMessageType_(v162, v24, v29);
  v154 = objc_msgSend_unarchiveClassForMessageType_(v162, v31, v29);
  if (v30)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_276A753D8;
    aBlock[3] = &unk_27A6E58F8;
    aBlock[4] = selfCopy;
    aBlock[5] = v157;
    v174 = _Block_copy(aBlock);
    if (v166 < 1)
    {
      v171 = 0;
    }

    else
    {
      v171 = 0;
      v34 = 8;
      v35 = v166;
      do
      {
        v36 = *(infoCopy[5] + v34);
        if (v174[2](v174, v36))
        {
          v39 = objc_msgSend_unknownMessageFromMessageInfo_stream_(selfCopy, v37, v36, stream);
          if (v171)
          {
            objc_msgSend_addObject_(v171, v38, v39);
          }

          else
          {
            v40 = objc_alloc(MEMORY[0x277CBEB18]);
            v171 = objc_msgSend_initWithObjects_(v40, v41, v39, 0);
          }
        }

        else
        {
          (*(stream->var0 + 4))(stream, *(v36 + 204));
        }

        v34 += 8;
        --v35;
      }

      while (v35);
    }

    v45 = (*(*v30 + 24))(v30);
    v214 = v45;
    if (*(v161 + 204))
    {
      v205 = 0uLL;
      streamCopy2 = stream;
      v207[0] = 0;
      *(v207 + 6) = 0;
      v208 = 0x7FFFFFFFLL;
      v209 = 0x7FFFFFFF;
      v210 = google::protobuf::io::CodedInputStream::default_recursion_limit_;
      v211 = google::protobuf::io::CodedInputStream::default_recursion_limit_;
      v212 = 0;
      v213 = 0;
      google::protobuf::io::CodedInputStream::Refresh(&v205);
      google::protobuf::io::CodedInputStream::PushLimit(&v205, *(v161 + 204));
      v46 = google::protobuf::MessageLite::ParsePartialFromCodedStream(v45, &v205);
      google::protobuf::io::CodedInputStream::~CodedInputStream(&v205);
    }

    else
    {
      v46 = 1;
    }

    v199 = 0;
    v200 = &v199;
    v201 = 0x3032000000;
    v202 = sub_276A75444;
    v203 = sub_276A75454;
    v204 = 0;
    v193 = 0;
    v194 = &v193;
    v195 = 0x3032000000;
    v196 = sub_276A75444;
    v197 = sub_276A75454;
    v198 = 0;
    if (v46)
    {
      if ((*&selfCopy->_flags & 2) != 0 || (v47 = sub_276A7545C(v161 + 48), (v48 = v47) == 0))
      {
        v55 = 1;
      }

      else
      {
        v50 = (v200 + 5);
        v49 = v200[5];
        LOBYTE(v205) = 0;
        v51 = (v194 + 5);
        v191 = v194[5];
        obj = v49;
        sub_276AD117C(v47, v45, 0, &obj, &v191, &v205);
        objc_storeStrong(v50, obj);
        objc_storeStrong(v51, v191);
        if (v205 != 1 || (*&selfCopy->_flags & 4) != 0)
        {
          v55 = 1;
        }

        else
        {
          v53 = objc_msgSend_tsp_errorWithCode_(MEMORY[0x277CCA9B8], v52, 7);
          objc_msgSend_setError_(selfCopy, v54, v53);

          v55 = 0;
        }

        v57 = sub_2769C1374(v48, v52);
        MEMORY[0x277C9F670](v57, 0x1060C4094AFC76ALL);
      }
    }

    else
    {
      v55 = 0;
    }

    v187 = 0;
    v188 = &v187;
    v189 = 0x2020000000;
    v190 = 0;
    v186[0] = MEMORY[0x277D85DD0];
    v186[1] = 3221225472;
    v186[2] = sub_276A7556C;
    v186[3] = &unk_27A6E5920;
    v186[4] = &v187;
    v186[5] = &v199;
    v186[6] = &v193;
    v158 = _Block_copy(v186);
    if (v55)
    {
      v59 = v176;
      if (*(v161 + 72) >= 1)
      {
        operator new();
      }
    }

    else
    {
      v59 = v176;
    }

    if (v166 + 1 < v59)
    {
      v169 = 0;
      v60 = v166 + 1;
      v167 = v12;
      while (1)
      {
        v61 = *(infoCopy[5] + 8 * v60 + 8);
        v62 = v170;
        if (v60 < v167)
        {
          v62 = 1;
        }

        if ((v62 & 1) == 0 && v61[52] == v166 && (v61[51] || v61[38] >= 1))
        {
          break;
        }

        if ((v169 & 1) == 0 && v174[2](v174, *(infoCopy[5] + 8 * v60 + 8)))
        {
          v168 = objc_msgSend_unknownMessageFromMessageInfo_stream_(selfCopy, v73, v61, stream);
          if (v171)
          {
            objc_msgSend_addObject_(v171, v74, v168);
            v169 = 0;
          }

          else
          {
            v78 = objc_alloc(MEMORY[0x277CBEB18]);
            v169 = 0;
            v171 = objc_msgSend_initWithObjects_(v78, v79, v168, 0);
          }

          goto LABEL_177;
        }

        (*(stream->var0 + 4))(stream, v61[51]);
LABEL_178:
        if (v176 == ++v60)
        {
          goto LABEL_182;
        }
      }

      v173 = *(infoCopy[5] + 8 * v60 + 8);
      v63 = UnsafePointer((v61 + 30), v58);
      if (v55)
      {
        v66 = v63;
        if ((*&selfCopy->_flags & 2) != 0)
        {
          goto LABEL_105;
        }

        v67 = *(v173 + 56);
        if (v67 < 1)
        {
          goto LABEL_105;
        }

        v68 = 1;
        v69 = *(v173 + 56);
        v70 = 1;
        do
        {
          v71 = *(*(v173 + 64) + 8 * v68);
          if ((*(v71 + 16) & 0x10) != 0 && *(v71 + 116) == -1 && (*(v71 + 120) - 1) < 2)
          {
            break;
          }

          v70 = v68++ < v67;
          --v69;
        }

        while (v69);
        if (!v70)
        {
LABEL_105:
          v168 = 0;
          v160 = 0;
        }

        else
        {
          if ((v169 & 1) == 0)
          {
            objc_msgSend_removeAllObjects(v171, v64, v65);
          }

          v168 = objc_msgSend_unknownMessageFromMessageInfo_stream_(selfCopy, v64, v173, stream);
          if (v171)
          {
            objc_msgSend_addObject_(v171, v72, v168);
            v169 = 1;
            v160 = 1;
          }

          else
          {
            v131 = objc_alloc(MEMORY[0x277CBEB18]);
            v169 = 1;
            v160 = 1;
            v171 = objc_msgSend_initWithObjects_(v131, v132, v168, 0);
          }
        }

        v76 = v66 >= 0xF000000000000;
        v75 = v173;
        if (v76)
        {
          v77 = v214;
          if ((*&selfCopy->_flags & 2) != 0)
          {
            v155 = 0;
          }

          else
          {
            v155 = sub_276A7545C(v173 + 48);
          }

          if ((*(v173 + 16) & 1) != 0 && v77 && (v101 = *(v173 + 192), v102 = *(v101 + 16), v102 >= 1))
          {
            v103 = 0;
            v104 = *(v101 + 16);
            v164 = (v102 - 1);
            v165 = v155;
            while (1)
            {
              v105 = *(*(v101 + 24) + 4 * v103);
              v106 = (*(*v77 + 152))(v77);
              (*(*v77 + 152))(v77);
              v108 = v107;
              FieldByNumber = google::protobuf::Descriptor::FindFieldByNumber(v106, v105);
              if (!FieldByNumber)
              {
                FieldByNumber = google::protobuf::Reflection::FindKnownExtensionByNumber(v108, v105);
                if (!FieldByNumber)
                {
                  break;
                }
              }

              v77 = google::protobuf::Reflection::MutableMessage(v108, v77, FieldByNumber, 0);
              if (!v165)
              {
                goto LABEL_142;
              }

              v110 = v165 + 4;
              v111 = v165[4];
              if (!v111)
              {
                goto LABEL_142;
              }

              do
              {
                if (*(v111 + 32) >= v105)
                {
                  v110 = v111;
                }

                v111 = *(v111 + 8 * (*(v111 + 32) < v105));
              }

              while (v111);
              if (v110 != v165 + 4 && v105 >= *(v110 + 8) && (v112 = v110[5]) != 0)
              {
                v165 = v112;
                v113 = v112[1];
                if (v113)
                {
                  if (*(v113 + 112) != 3 && v103 != v164)
                  {
                    v115 = MEMORY[0x277D81150];
                    v116 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v64, "[TSPComponentReader newUnarchiverWithArchiveInfo:stream:isUnknownObject:]");
                    v118 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v117, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPComponentReader.mm");
                    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v115, v119, v116, v118, 450, 0, "Field path size for diff archiver field rules does not match.");

                    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v120, v121);
                    v165 = 0;
                    v75 = v173;
                  }
                }
              }

              else
              {
LABEL_142:
                v165 = 0;
              }

              if (v77)
              {
                if (++v103 < v104)
                {
                  continue;
                }
              }

              goto LABEL_114;
            }
          }

          else
          {
            v165 = v155;
LABEL_114:
            if (v77)
            {
              if (v165)
              {
                v80 = v188[3];
                v184 = 0;
                v185 = 0;
                sub_276AD1988(v165, v77, v80, &v185, &v184);
                v81 = v185;
                v82 = v184;
                if (objc_msgSend_count(v81, v83, v84) || objc_msgSend_count(v82, v85, v86))
                {
                  v158[2](v158, v81, v82);
                }
              }

              v163 = *(v75 + 152);
              if (v163 >= 1)
              {
                for (i = 0; i != v163; ++i)
                {
                  v88 = *(*(v75 + 160) + 8 * i + 8);
                  v89 = *(v88 + 16);
                  if (v89 >= 1)
                  {
                    v90 = 0;
                    v91 = v77;
                    do
                    {
                      v92 = *(*(v88 + 24) + 4 * v90);
                      v93 = (*(*v91 + 152))(v91);
                      (*(*v91 + 152))(v91);
                      v95 = v94;
                      KnownExtensionByNumber = google::protobuf::Descriptor::FindFieldByNumber(v93, v92);
                      if (!KnownExtensionByNumber)
                      {
                        KnownExtensionByNumber = google::protobuf::Reflection::FindKnownExtensionByNumber(v95, v92);
                        if (!KnownExtensionByNumber)
                        {
                          break;
                        }
                      }

                      if (v89 - 1 == v90)
                      {
                        google::protobuf::Reflection::ClearField(v95, v91, KnownExtensionByNumber);
                      }

                      else
                      {
                        if (!google::protobuf::Reflection::HasField(v95, v91, KnownExtensionByNumber))
                        {
                          break;
                        }

                        v91 = google::protobuf::Reflection::MutableMessage(v95, v91, KnownExtensionByNumber, 0);
                        if (!v91)
                        {
                          break;
                        }
                      }

                      ++v90;
                    }

                    while (v90 < v89);
                  }

                  v75 = v173;
                }
              }

              if (*(v75 + 204))
              {
                if (v160)
                {
                  v97 = v77;
                  if (!v168)
                  {
                    TSUSetCrashReporterInfo();
                    v148 = MEMORY[0x277D81150];
                    v150 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v149, "[TSPComponentReader newUnarchiverWithArchiveInfo:stream:isUnknownObject:]", "[TSPComponentReader newUnarchiverWithArchiveInfo:stream:isUnknownObject:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPComponentReader.mm", 507);
                    v152 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v151, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPComponentReader.mm");
                    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v148, v153, v150, v152, 507, 1, "Unknown message should be initialized here.");

                    TSUCrashBreakpoint();
                    abort();
                  }

                  sub_276A00FEC(v181);
                  v100 = objc_msgSend_messageData(v168, v98, v99);
                  sub_276A01048(v181, v100);

                  v205 = 0u;
                  streamCopy2 = v181;
                  v207[0] = 0;
                  *(v207 + 6) = 0;
                  v208 = 0x7FFFFFFFLL;
                  v209 = 0x7FFFFFFF;
                  v210 = google::protobuf::io::CodedInputStream::default_recursion_limit_;
                  v211 = google::protobuf::io::CodedInputStream::default_recursion_limit_;
                  v212 = 0;
                  v213 = 0;
                  google::protobuf::io::CodedInputStream::Refresh(&v205);
                  google::protobuf::io::CodedInputStream::PushLimit(&v205, *(v75 + 204));
                  v55 = google::protobuf::MessageLite::MergePartialFromCodedStream(v77, &v205);
                  google::protobuf::io::CodedInputStream::~CodedInputStream(&v205);
                }

                else
                {
                  v205 = 0u;
                  streamCopy2 = stream;
                  v207[0] = 0;
                  *(v207 + 6) = 0;
                  v208 = 0x7FFFFFFFLL;
                  v209 = 0x7FFFFFFF;
                  v210 = google::protobuf::io::CodedInputStream::default_recursion_limit_;
                  v211 = google::protobuf::io::CodedInputStream::default_recursion_limit_;
                  v212 = 0;
                  v213 = 0;
                  google::protobuf::io::CodedInputStream::Refresh(&v205);
                  v97 = v77;
                  google::protobuf::io::CodedInputStream::PushLimit(&v205, *(v75 + 204));
                  v55 = google::protobuf::MessageLite::MergePartialFromCodedStream(v77, &v205);
                  google::protobuf::io::CodedInputStream::~CodedInputStream(&v205);
                }
              }

              else
              {
                v55 = 1;
                v97 = v77;
              }

              if (v165 && v55)
              {
                v122 = v188[3];
                v179 = 0;
                v180 = 0;
                sub_276AD11A0(v165, v97, v122, &v180, &v179, 0);
                v123 = v180;
                v124 = v179;
                if (objc_msgSend_count(v123, v125, v126) || objc_msgSend_count(v124, v127, v128))
                {
                  v158[2](v158, v123, v124);
                }
              }

              if (v155)
              {
                v129 = sub_2769C1374(v155, v64);
                MEMORY[0x277C9F670](v129, 0x1060C4094AFC76ALL);
              }

              if (*(v75 + 72) > 0)
              {
                v130 = v55;
              }

              else
              {
                v130 = 0;
              }

              if (v130 == 1)
              {
                operator new();
              }

              goto LABEL_177;
            }
          }
        }

        if (v160)
        {
          LOBYTE(v55) = 1;
          goto LABEL_177;
        }
      }

      else
      {
        v168 = 0;
        v75 = v173;
      }

      (*(stream->var0 + 4))(stream, *(v75 + 204));
LABEL_177:

      goto LABEL_178;
    }

    v169 = 0;
LABEL_182:
    if (v55)
    {
      if ((*(*v214 + 48))(v214))
      {
        if (objc_msgSend_count(v171, v58, v133) || objc_msgSend_count(v200[5], v134, v135) || objc_msgSend_count(v194[5], v136, v137))
        {
          v139 = [TSPUnknownContent alloc];
          v141 = objc_msgSend_initWithMessages_messagesAreDiffs_preserveFields_preserveUntilModifiedFields_(v139, v140, v171, v169 & 1, v200[5], v194[5]);
        }

        else
        {
          v141 = 0;
        }

        v178 = 0;
        hasAlternateMessages = objc_msgSend_newUnarchiverWithObjectIdentifier_messageInfo_unarchiveClass_message_messageVersion_strongReferences_unknownContent_hasAlternateMessages_(selfCopy, v138, v156, v161, v154, &v214, v157, &v178, v141, v176 > 1);
        sub_276A519D8(&v178);

        goto LABEL_195;
      }

      if (UnsafePointer != -1)
      {
        sub_276BD5A5C();
      }
    }

    if ((*&selfCopy->_flags & 2) != 0)
    {
      v143 = 1;
      hasAlternateMessages = objc_msgSend_unknownObjectUnarchiverWithArchiveInfo_stream_ignoreMessageData_hasAlternateMessages_(selfCopy, v58, infoCopy, 0, 1, v176 > 1);
      goto LABEL_197;
    }

    if (UnsafePointer != -1)
    {
      sub_276BD5A84();
    }

    hasAlternateMessages = 0;
LABEL_195:
    v143 = 0;
LABEL_197:
    v144 = v188[3];
    if (v144)
    {
      v145 = sub_276A762A8(v144);
      MEMORY[0x277C9F670](v145, 0x10A0C408EF24B1CLL);
    }

    if (object)
    {
      *object = v143;
    }

    v56 = hasAlternateMessages;

    _Block_object_dispose(&v187, 8);
    _Block_object_dispose(&v193, 8);

    _Block_object_dispose(&v199, 8);
    v146 = v214;
    v214 = 0;
    if (v146)
    {
      (*(*v146 + 8))(v146);
    }

    goto LABEL_204;
  }

  if (((v27 ^ 1 | ((*&selfCopy->_flags & 2) >> 1)) & 1) == 0 && (objc_msgSend_isCrossAppPaste(selfCopy, v32, v33) & 1) == 0 && v154 != objc_opt_class() && UnsafePointer != -1)
  {
    sub_276BD5AAC();
  }

  flags = selfCopy->_flags;
  if (v156 != 1 || (*&flags & 0x10) != 0)
  {
    v44 = objc_msgSend_unknownObjectUnarchiverWithArchiveInfo_stream_ignoreMessageData_hasAlternateMessages_(selfCopy, v32, v23, stream, (*&flags >> 1) & 1, v176 > 1);
  }

  else
  {
    v43 = sub_276A764C4(v23);
    (*(stream->var0 + 4))(stream, v43);
    v44 = 0;
  }

  if (object)
  {
    *object = 1;
  }

  v56 = v44;
LABEL_204:

  return v56;
}

- (id)newUnarchiverWithObjectIdentifier:(int64_t)identifier messageInfo:(const void *)info unarchiveClass:(Class)class message:(void *)message messageVersion:(unint64_t)version strongReferences:()unique_ptr<TSP:(std:(id)p :(BOOL)self0 default_delete<TSP::IdentifierMap<BOOL>>>)a8 :IdentifierMap<BOOL> unknownContent:hasAlternateMessages:
{
  pCopy = p;
  v18 = [TSPUnarchiver alloc];
  v19 = *(info + 50);
  v20 = *message;
  *message = 0;
  v21 = *a8.__ptr_;
  *a8.__ptr_ = 0;
  v32 = v21;
  v33 = v20;
  v24 = objc_msgSend_delegate(self, v22, v23);
  v26 = objc_msgSend_lazyReferenceDelegateForReader_(v24, v25, self);
  hasAlternateMessages_objectDelegate_lazyReferenceDelegate_delegate = objc_msgSend_initWithMessageType_unarchiveClass_message_identifier_strongReferences_messageVersion_unknownContent_hasAlternateMessages_objectDelegate_lazyReferenceDelegate_delegate_(v18, v27, v19, class, &v33, identifier, &v32, version, pCopy, a10, self, v26, self);

  sub_276A519D8(&v32);
  v29 = v33;
  v33 = 0;
  if (v29)
  {
    (*(*v29 + 8))(v29);
  }

  return hasAlternateMessages_objectDelegate_lazyReferenceDelegate_delegate;
}

- (const)unknownObjectMessageInfo
{
  if (qword_280A529F8 != -1)
  {
    sub_276BD5AC0();
  }

  return qword_280A529F0;
}

- (id)unknownMessageFromMessageInfo:(const void *)info stream:(DispatchDataInputStream *)stream
{
  v5 = sub_276A010BC(stream, *(info + 51));
  v6 = [TSPUnknownMessage alloc];
  v8 = objc_msgSend_initWithMessageInfo_data_(v6, v7, info, v5);

  return v8;
}

- (id)unknownObjectUnarchiverWithArchiveInfo:(const void *)info stream:(DispatchDataInputStream *)stream ignoreMessageData:(BOOL)data hasAlternateMessages:(BOOL)messages
{
  dataCopy = data;
  v10 = *(info + 6);
  v11 = objc_msgSend_component(self, a2, info);
  if (v10 == objc_msgSend_identifier(v11, v12, v13))
  {
    v16 = objc_msgSend_component(self, v14, v15);
    objc_msgSend_preferredLocator(v16, v17, v18);
    objc_claimAutoreleasedReturnValue();
  }

  if (stream)
  {
    if (dataCopy)
    {
      v19 = MEMORY[0x277D85CC8];
      v20 = sub_276A764C4(info);
      (*(stream->var0 + 4))(stream, v20);
    }

    else
    {
      v22 = sub_276A764C4(info);
      sub_276A010BC(stream, v22);
      objc_claimAutoreleasedReturnValue();
    }
  }

  else
  {
    v21 = MEMORY[0x277D85CC8];
  }

  v23 = [TSPUnknownObjectUnarchiver alloc];
  operator new();
}

@end