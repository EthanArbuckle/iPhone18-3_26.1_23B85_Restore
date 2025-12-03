@interface SIMovReader
- (__CVBuffer)getCurrentReadBufferForTrack:(id)track;
- (__CVBuffer)readFrame:(id *)frame;
- (id).cxx_construct;
- (id)initReaderWithVideoURL:(id)l andTrackName:(id)name;
- (id)initReaderWithVideoURL:(id)l trackList:(id)list;
- (int64_t)readNextAvaliableFrame:(id *)frame;
- (void)dealloc;
@end

@implementation SIMovReader

- (id)initReaderWithVideoURL:(id)l trackList:(id)list
{
  v71 = *MEMORY[0x277D85DE8];
  lCopy = l;
  listCopy = list;
  v62.receiver = self;
  v62.super_class = SIMovReader;
  v7 = [(SIMovReader *)&v62 init];
  if (v7)
  {
    v49 = listCopy;
    v61 = 0;
    v8 = [objc_alloc(MEMORY[0x277D256C0]) initWithURL:lCopy error:&v61];
    v50 = v61;
    [(SIMovReader *)v7 setReader:v8];

    reader = [(SIMovReader *)v7 reader];
    LODWORD(v8) = reader == 0;

    if (v8)
    {
      v46 = __SceneIntelligenceLogSharedInstance();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        *buf = 136381187;
        v66 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIMovReader.mm";
        v67 = 1025;
        v68 = 76;
        v69 = 2113;
        v70 = v50;
        _os_log_impl(&dword_21DE0D000, v46, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Couldn't open video track with error %{private}@ ***", buf, 0x1Cu);
      }

LABEL_31:
      v44 = 0;
    }

    else
    {
      v7->_readCount = 0;
      v7->_bufferEOFCount = 0;
      v7->_lcmfps = 1;
      v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
      trackInfos = v7->trackInfos;
      v7->trackInfos = v10;

      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      obj = v49;
      v12 = [obj countByEnumeratingWithState:&v57 objects:v64 count:16];
      if (v12)
      {
        v13 = *v58;
        while (2)
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v58 != v13)
            {
              objc_enumerationMutation(obj);
            }

            v15 = *(*(&v57 + 1) + 8 * i);
            reader2 = [(SIMovReader *)v7 reader];
            v17 = [reader2 containsStream:v15];

            if (!v17)
            {
              v45 = __SceneIntelligenceLogSharedInstance();
              if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
              {
                *buf = 136381187;
                v66 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIMovReader.mm";
                v67 = 1025;
                v68 = 95;
                v69 = 2113;
                v70 = v15;
                _os_log_impl(&dword_21DE0D000, v45, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** video doesn't contain steam %{private}@ ***", buf, 0x1Cu);
              }

              goto LABEL_31;
            }

            reader3 = [(SIMovReader *)v7 reader];
            [reader3 getFrameRateForStream:v15];
            v20 = v19;

            reader4 = [(SIMovReader *)v7 reader];
            [reader4 getSizeForStream:v15];
            v23 = v22;
            v25 = v24;

            v26 = [SIMovStreamInfo alloc];
            reader5 = [(SIMovReader *)v7 reader];
            v28 = llround(v20);
            v29 = -[SIMovStreamInfo initInfoWithTrackName:frameRate:pixelBufferFormat:resolution:](v26, "initInfoWithTrackName:frameRate:pixelBufferFormat:resolution:", v15, [reader5 getOutputPixelFormatForStream:v15], v28, v23, v25);
            [(NSMutableDictionary *)v7->trackInfos setObject:v29 forKeyedSubscript:v15];

            LOBYTE(v30) = 0;
            if (v28 && v7->_lcmfps)
            {
              lcmfps = v7->_lcmfps;
              v30 = lcmfps / std::__gcd<unsigned char>(lcmfps, v28) * v28;
            }

            v7->_lcmfps = v30;
            v32 = __SceneIntelligenceLogSharedInstance();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
            {
              v33 = [(NSMutableDictionary *)v7->trackInfos objectForKeyedSubscript:v15];
              v34 = [v33 description];
              *buf = 136381187;
              v66 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIMovReader.mm";
              v67 = 1025;
              v68 = 93;
              v69 = 2113;
              v70 = v34;
              _os_log_impl(&dword_21DE0D000, v32, OS_LOG_TYPE_DEBUG, " %{private}s:%{private}d *** reading track from video: \n %{private}@ ***", buf, 0x1Cu);
            }
          }

          v12 = [obj countByEnumeratingWithState:&v57 objects:v64 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }

      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v35 = v7->trackInfos;
      v36 = [(NSMutableDictionary *)v35 countByEnumeratingWithState:&v53 objects:v63 count:16];
      if (v36)
      {
        v37 = *v54;
        do
        {
          for (j = 0; j != v36; ++j)
          {
            if (*v54 != v37)
            {
              objc_enumerationMutation(v35);
            }

            v39 = *(*(&v53 + 1) + 8 * j);
            v40 = v7->_lcmfps;
            v41 = [(NSMutableDictionary *)v7->trackInfos objectForKeyedSubscript:v39];
            frameRate = [v41 frameRate];
            v43 = [(NSMutableDictionary *)v7->trackInfos objectForKeyedSubscript:v39];
            [v43 setReadCycle:v40 / frameRate];
          }

          v36 = [(NSMutableDictionary *)v35 countByEnumeratingWithState:&v53 objects:v63 count:16];
        }

        while (v36);
      }

      v44 = v7;
    }

    listCopy = v49;
  }

  else
  {
    v44 = 0;
  }

  v47 = *MEMORY[0x277D85DE8];
  return v44;
}

- (id)initReaderWithVideoURL:(id)l andTrackName:(id)name
{
  v12[1] = *MEMORY[0x277D85DE8];
  lCopy = l;
  nameCopy = name;
  v12[0] = nameCopy;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v9 = [(SIMovReader *)self initReaderWithVideoURL:lCopy trackList:v8];

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)dealloc
{
  for (i = &self->_pixelBufferMap.__table_.__first_node_; ; CVPixelBufferRelease(i[5].__next_))
  {
    i = i->__next_;
    if (!i)
    {
      break;
    }
  }

  v4.receiver = self;
  v4.super_class = SIMovReader;
  [(SIMovReader *)&v4 dealloc];
}

- (__CVBuffer)readFrame:(id *)frame
{
  reader = [(SIMovReader *)self reader];
  allKeys = [(NSMutableDictionary *)self->trackInfos allKeys];
  firstObject = [allKeys firstObject];
  v10 = 0;
  v8 = [reader copyNextFrameForStream:firstObject timestamp:frame error:&v10];

  return v8;
}

- (__CVBuffer)getCurrentReadBufferForTrack:(id)track
{
  trackCopy = track;
  std::string::basic_string[abi:nn200100]<0>(__p, [trackCopy UTF8String]);
  v9 = __p;
  v5 = std::__hash_table<std::__hash_value_type<std::string,e5rt_execution_stream_operation *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,e5rt_execution_stream_operation *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,e5rt_execution_stream_operation *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,e5rt_execution_stream_operation *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&self->_pixelBufferMap.__table_.__bucket_list_.__ptr_, __p)[5];
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

- (int64_t)readNextAvaliableFrame:(id *)frame
{
  v44 = *MEMORY[0x277D85DE8];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = self->trackInfos;
  v4 = 0;
  v5 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v34 objects:v43 count:16];
  if (v5)
  {
    v32 = *v35;
    v7 = 1;
    *&v6 = 136380931;
    v29 = v6;
    while (1)
    {
      v8 = 0;
      do
      {
        if (*v35 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v34 + 1) + 8 * v8);
        readCount = self->_readCount;
        v11 = [(NSMutableDictionary *)self->trackInfos objectForKeyedSubscript:v9, v29];
        v12 = readCount % [v11 readCycle] == 0;

        if (v12)
        {
          v13 = v9;
          std::string::basic_string[abi:nn200100]<0>(__p, [v9 UTF8String]);
          v38 = __p;
          v14 = std::__hash_table<std::__hash_value_type<std::string,e5rt_execution_stream_operation *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,e5rt_execution_stream_operation *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,e5rt_execution_stream_operation *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,e5rt_execution_stream_operation *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&self->_pixelBufferMap.__table_.__bucket_list_.__ptr_, __p);
          CVPixelBufferRelease(v14[5]);
          if (v42 < 0)
          {
            operator delete(*__p);
          }

          reader = [(SIMovReader *)self reader];
          v16 = [(NSMutableDictionary *)self->trackInfos objectForKeyedSubscript:v9];
          name = [v16 name];
          v33 = v4;
          v18 = [reader copyNextFrameForStream:name timestamp:frame error:&v33];
          v19 = v33;

          v20 = v9;
          std::string::basic_string[abi:nn200100]<0>(__p, [v9 UTF8String]);
          v38 = __p;
          std::__hash_table<std::__hash_value_type<std::string,e5rt_execution_stream_operation *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,e5rt_execution_stream_operation *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,e5rt_execution_stream_operation *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,e5rt_execution_stream_operation *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&self->_pixelBufferMap.__table_.__bucket_list_.__ptr_, __p)[5] = v18;
          if (v42 < 0)
          {
            operator delete(*__p);
          }

          v21 = v9;
          std::string::basic_string[abi:nn200100]<0>(__p, [v9 UTF8String]);
          v38 = __p;
          v22 = std::__hash_table<std::__hash_value_type<std::string,e5rt_execution_stream_operation *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,e5rt_execution_stream_operation *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,e5rt_execution_stream_operation *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,e5rt_execution_stream_operation *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&self->_pixelBufferMap.__table_.__bucket_list_.__ptr_, __p)[5];
          if (v42 < 0)
          {
            operator delete(*__p);
            if (v22)
            {
LABEL_13:
              v7 = 0;
LABEL_19:
              v4 = v19;
              goto LABEL_20;
            }
          }

          else if (v22)
          {
            goto LABEL_13;
          }

          if (v19)
          {
            v23 = __SceneIntelligenceLogSharedInstance();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              *__p = v29;
              *&__p[4] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIMovReader.mm";
              v40 = 1025;
              v41 = 150;
              _os_log_impl(&dword_21DE0D000, v23, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Failed to read the buffer. ***", __p, 0x12u);
            }

            v7 = 2;
            goto LABEL_19;
          }

          v7 = 0;
          v4 = 0;
          ++self->_bufferEOFCount;
        }

LABEL_20:
        ++v8;
      }

      while (v5 != v8);
      v24 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v34 objects:v43 count:16];
      v5 = v24;
      if (!v24)
      {
        goto LABEL_26;
      }
    }
  }

  v7 = 1;
LABEL_26:

  bufferEOFCount = self->_bufferEOFCount;
  self->_readCount = (self->_readCount + 1) % self->_lcmfps;
  if ([(NSMutableDictionary *)self->trackInfos count]== bufferEOFCount)
  {
    v26 = 3;
  }

  else
  {
    v26 = v7;
  }

  v27 = *MEMORY[0x277D85DE8];
  return v26;
}

- (id).cxx_construct
{
  *(self + 2) = 0u;
  *(self + 3) = 0u;
  *(self + 16) = 1065353216;
  return self;
}

@end