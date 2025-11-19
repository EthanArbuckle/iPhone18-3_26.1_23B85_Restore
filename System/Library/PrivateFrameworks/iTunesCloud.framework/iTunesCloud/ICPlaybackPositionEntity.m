@interface ICPlaybackPositionEntity
+ (id)keyValueStoreItemIdentifierForUniqueStoreID:(int64_t)a3 itemTitle:(id)a4 albumName:(id)a5 itemArtistName:(id)a6 feedURL:(id)a7 feedGUID:(id)a8;
- (BOOL)isEqual:(id)a3;
- (ICPlaybackPositionEntity)initWithCoder:(id)a3;
- (ICPlaybackPositionEntity)initWithDomain:(id)a3;
- (ICPlaybackPositionEntity)initWithDomain:(id)a3 playbackPositionKey:(id)a4 persistentIdentifier:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ICPlaybackPositionEntity

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "initWithDomain:", self->_playbackPositionDomain}];
  [v4 setPlaybackPositionKey:self->_playbackPositionKey];
  [v4 setLibraryIdentifier:self->_libraryIdentifier];
  [v4 setItemPersistentIdentifier:self->_itemPersistentIdentifier];
  [v4 setBookmarkTimestamp:self->_bookmarkTimestamp];
  [v4 setBookmarkTime:self->_bookmarkTime];
  [v4 setUserPlayCount:self->_userPlayCount];
  [v4 setHasBeenPlayed:self->_hasBeenPlayed];
  return v4;
}

- (ICPlaybackPositionEntity)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"domain"];
  v6 = [(ICPlaybackPositionEntity *)self initWithDomain:v5];
  if (v6)
  {
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"key"];
    playbackPositionKey = v6->_playbackPositionKey;
    v6->_playbackPositionKey = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"libraryUID"];
    libraryIdentifier = v6->_libraryIdentifier;
    v6->_libraryIdentifier = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"itemPersistenIdentifier"];
    itemPersistentIdentifier = v6->_itemPersistentIdentifier;
    v6->_itemPersistentIdentifier = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bookmarkTimestamp"];
    bookmarkTimestamp = v6->_bookmarkTimestamp;
    v6->_bookmarkTimestamp = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bookmarkTime"];
    bookmarkTime = v6->_bookmarkTime;
    v6->_bookmarkTime = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"playCount"];
    userPlayCount = v6->_userPlayCount;
    v6->_userPlayCount = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"hasBeenPlayed"];
    hasBeenPlayed = v6->_hasBeenPlayed;
    v6->_hasBeenPlayed = v19;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  playbackPositionDomain = self->_playbackPositionDomain;
  v5 = a3;
  [v5 encodeObject:playbackPositionDomain forKey:@"domain"];
  [v5 encodeObject:self->_playbackPositionKey forKey:@"key"];
  [v5 encodeObject:self->_libraryIdentifier forKey:@"libraryUID"];
  [v5 encodeObject:self->_itemPersistentIdentifier forKey:@"itemPersistenIdentifier"];
  [v5 encodeObject:self->_bookmarkTimestamp forKey:@"bookmarkTimestamp"];
  [v5 encodeObject:self->_bookmarkTime forKey:@"bookmarkTime"];
  [v5 encodeObject:self->_userPlayCount forKey:@"playCount"];
  [v5 encodeObject:self->_hasBeenPlayed forKey:@"hasBeenPlayed"];
}

- (unint64_t)hash
{
  v3 = MSVHasherSharedSeed();
  v5 = v4;
  v6 = v3 ^ 0x736F6D6570736575;
  v7 = v3 ^ 0x6C7967656E657261;
  v8 = v4 ^ 0x646F72616E646F6DLL;
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = [v10 hash];
  v12 = v5 ^ 0x7465646279746573 ^ v11;
  v13 = (v6 + v8) ^ __ROR8__(v8, 51);
  v14 = v7 + v12;
  v15 = (v7 + v12) ^ __ROR8__(v12, 48);
  v16 = v15 + __ROR8__(v6 + v8, 32);
  v127 = __ROR8__(v14 + v13, 32);
  v136 = v16 ^ __ROR8__(v15, 43);
  v17 = v16 ^ v11;
  v118 = (v14 + v13) ^ __ROR8__(v13, 47);

  v18 = self->_playbackPositionDomain;
  v19 = [(NSString *)v18 hash];
  v20 = (v17 + v118) ^ __ROR8__(v118, 51);
  v21 = v127 + (v136 ^ v19);
  v22 = __ROR8__(v136 ^ v19, 48);
  v23 = (v21 ^ v22) + __ROR8__(v17 + v118, 32);
  v24 = v23 ^ __ROR8__(v21 ^ v22, 43);
  v25 = v21 + v20;
  v128 = __ROR8__(v25, 32);
  v137 = v24;
  v110 = v23 ^ v19;
  v119 = v25 ^ __ROR8__(v20, 47);

  v26 = self->_playbackPositionKey;
  data = [(NSString *)v26 hash];
  v27 = (v110 + v119) ^ __ROR8__(v119, 51);
  v28 = v128 + (v137 ^ data);
  v29 = __ROR8__(v137 ^ data, 48);
  v30 = (v28 ^ v29) + __ROR8__(v110 + v119, 32);
  v31 = v30 ^ __ROR8__(v28 ^ v29, 43);
  v32 = v28 + v27;
  v129 = __ROR8__(v32, 32);
  v138 = v31;
  v111 = v30 ^ data;
  v120 = v32 ^ __ROR8__(v27, 47);

  v33 = self->_libraryIdentifier;
  v34 = [(NSString *)v33 hash];
  v35 = (v111 + v120) ^ __ROR8__(v120, 51);
  v36 = v129 + (v138 ^ v34);
  v37 = __ROR8__(v138 ^ v34, 48);
  v38 = (v36 ^ v37) + __ROR8__(v111 + v120, 32);
  v39 = v38 ^ __ROR8__(v36 ^ v37, 43);
  v40 = v36 + v35;
  v130 = __ROR8__(v40, 32);
  v139 = v39;
  v112 = v38 ^ v34;
  v121 = v40 ^ __ROR8__(v35, 47);

  v41 = self->_itemPersistentIdentifier;
  v42 = [(NSNumber *)v41 hash];
  v43 = (v112 + v121) ^ __ROR8__(v121, 51);
  v44 = v130 + (v139 ^ v42);
  v45 = __ROR8__(v139 ^ v42, 48);
  v46 = (v44 ^ v45) + __ROR8__(v112 + v121, 32);
  v47 = v46 ^ __ROR8__(v44 ^ v45, 43);
  v48 = v44 + v43;
  v131 = __ROR8__(v48, 32);
  v140 = v47;
  v113 = v46 ^ v42;
  v122 = v48 ^ __ROR8__(v43, 47);

  v49 = self->_bookmarkTimestamp;
  v50 = [(NSNumber *)v49 hash];
  v51 = (v113 + v122) ^ __ROR8__(v122, 51);
  v52 = v131 + (v140 ^ v50);
  v53 = __ROR8__(v140 ^ v50, 48);
  v54 = (v52 ^ v53) + __ROR8__(v113 + v122, 32);
  v55 = v54 ^ __ROR8__(v52 ^ v53, 43);
  v56 = v52 + v51;
  v132 = __ROR8__(v56, 32);
  v141 = v55;
  v114 = v54 ^ v50;
  v123 = v56 ^ __ROR8__(v51, 47);

  v57 = self->_bookmarkTime;
  v58 = [(NSNumber *)v57 hash];
  v59 = (v114 + v123) ^ __ROR8__(v123, 51);
  v60 = v132 + (v141 ^ v58);
  v61 = __ROR8__(v141 ^ v58, 48);
  v62 = (v60 ^ v61) + __ROR8__(v114 + v123, 32);
  v63 = v62 ^ __ROR8__(v60 ^ v61, 43);
  v64 = v60 + v59;
  v133 = __ROR8__(v64, 32);
  v142 = v63;
  v115 = v62 ^ v58;
  v124 = v64 ^ __ROR8__(v59, 47);

  v65 = self->_userPlayCount;
  v66 = [(NSNumber *)v65 hash];
  v67 = (v115 + v124) ^ __ROR8__(v124, 51);
  v68 = v133 + (v142 ^ v66);
  v69 = __ROR8__(v142 ^ v66, 48);
  v70 = (v68 ^ v69) + __ROR8__(v115 + v124, 32);
  v71 = v70 ^ __ROR8__(v68 ^ v69, 43);
  v72 = v68 + v67;
  v134 = __ROR8__(v72, 32);
  v143 = v71;
  v116 = v70 ^ v66;
  v125 = v72 ^ __ROR8__(v67, 47);

  v73 = self->_hasBeenPlayed;
  v74 = [(NSNumber *)v73 hash];
  v75 = (v116 + v125) ^ __ROR8__(v125, 51);
  v76 = v134 + (v143 ^ v74);
  v77 = __ROR8__(v143 ^ v74, 48);
  v78 = (v76 ^ v77) + __ROR8__(v116 + v125, 32);
  v79 = v78 ^ __ROR8__(v76 ^ v77, 43);
  v80 = v76 + v75;
  v135 = __ROR8__(v80, 32);
  v144 = v79;
  v117 = v78 ^ v74;
  v126 = v80 ^ __ROR8__(v75, 47);

  v81 = (v117 + v126) ^ __ROR8__(v126, 51);
  v82 = v135 + (v144 ^ 0x4800000000000000);
  v83 = __ROR8__(v144 ^ 0x4800000000000000, 48);
  v84 = (v82 ^ v83) + __ROR8__(v117 + v126, 32);
  v85 = v84 ^ __ROR8__(v82 ^ v83, 43);
  v86 = v82 + v81;
  v87 = v86 ^ __ROR8__(v81, 47);
  v88 = (v84 ^ 0x4800000000000000) + v87;
  v89 = v88 ^ __ROR8__(v87, 51);
  v90 = (__ROR8__(v86, 32) ^ 0xFFLL) + v85;
  v91 = __ROR8__(v85, 48);
  v92 = __ROR8__(v88, 32) + (v90 ^ v91);
  v93 = v92 ^ __ROR8__(v90 ^ v91, 43);
  v94 = v89 + v90;
  v95 = v94 ^ __ROR8__(v89, 47);
  v96 = v95 + v92;
  v97 = v96 ^ __ROR8__(v95, 51);
  v98 = __ROR8__(v94, 32) + v93;
  v99 = __ROR8__(v93, 48);
  v100 = __ROR8__(v96, 32) + (v98 ^ v99);
  v101 = v100 ^ __ROR8__(v98 ^ v99, 43);
  v102 = v97 + v98;
  v103 = v102 ^ __ROR8__(v97, 47);
  v104 = v103 + v100;
  v105 = v104 ^ __ROR8__(v103, 51);
  v106 = __ROR8__(v102, 32) + v101;
  v107 = __ROR8__(v101, 48);
  v108 = __ROR8__(v104, 32) + (v106 ^ v107);
  return (v105 + v106) ^ __ROR8__(v105, 47) ^ v108 ^ __ROR8__(v105 + v106, 32) ^ v108 ^ __ROR8__(v106 ^ v107, 43);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    playbackPositionDomain = self->_playbackPositionDomain;
    v6 = [v4 playbackPositionDomain];
    if ([(NSString *)playbackPositionDomain isEqual:v6])
    {
      playbackPositionKey = self->_playbackPositionKey;
      v8 = [v4 playbackPositionKey];
      if ([(NSString *)playbackPositionKey isEqualToString:v8])
      {
        libraryIdentifier = self->_libraryIdentifier;
        v10 = [v4 libraryIdentifier];
        if ([(NSString *)libraryIdentifier isEqualToString:v10])
        {
          itemPersistentIdentifier = self->_itemPersistentIdentifier;
          v12 = [v4 itemPersistentIdentifier];
          if ([(NSNumber *)itemPersistentIdentifier isEqual:v12])
          {
            bookmarkTimestamp = self->_bookmarkTimestamp;
            v14 = [v4 bookmarkTimestamp];
            if ([(NSNumber *)bookmarkTimestamp isEqual:v14])
            {
              bookmarkTime = self->_bookmarkTime;
              v16 = [v4 bookmarkTime];
              if ([(NSNumber *)bookmarkTime isEqual:v16])
              {
                userPlayCount = self->_userPlayCount;
                v18 = [v4 userPlayCount];
                if ([(NSNumber *)userPlayCount isEqual:v18])
                {
                  hasBeenPlayed = self->_hasBeenPlayed;
                  v20 = [v4 hasBeenPlayed];
                  v21 = [(NSNumber *)hasBeenPlayed isEqual:v20];
                }

                else
                {
                  v21 = 0;
                }
              }

              else
              {
                v21 = 0;
              }
            }

            else
            {
              v21 = 0;
            }
          }

          else
          {
            v21 = 0;
          }
        }

        else
        {
          v21 = 0;
        }
      }

      else
      {
        v21 = 0;
      }
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (ICPlaybackPositionEntity)initWithDomain:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ICPlaybackPositionEntity;
  v6 = [(ICPlaybackPositionEntity *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_playbackPositionDomain, a3);
  }

  return v7;
}

- (ICPlaybackPositionEntity)initWithDomain:(id)a3 playbackPositionKey:(id)a4 persistentIdentifier:(id)a5
{
  v9 = a4;
  v10 = a5;
  v11 = [(ICPlaybackPositionEntity *)self initWithDomain:a3];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_playbackPositionKey, a4);
    objc_storeStrong(&v12->_itemPersistentIdentifier, a5);
  }

  return v12;
}

+ (id)keyValueStoreItemIdentifierForUniqueStoreID:(int64_t)a3 itemTitle:(id)a4 albumName:(id)a5 itemArtistName:(id)a6 feedURL:(id)a7 feedGUID:(id)a8
{
  v57[4] = *MEMORY[0x1E69E9840];
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v18 = v17;
  if (!a3 || v16 || v17)
  {
    v20 = getML3TrackPropertyTitle();
    v56[0] = v20;
    v50 = v13;
    if (v13)
    {
      v21 = v13;
    }

    else
    {
      v21 = &stru_1F2C4A680;
    }

    v57[0] = v21;
    v22 = getML3TrackPropertyAlbum();
    v56[1] = v22;
    if (v14)
    {
      v23 = v14;
    }

    else
    {
      v23 = &stru_1F2C4A680;
    }

    v57[1] = v23;
    v24 = getML3TrackPropertyArtist();
    v56[2] = v24;
    if (v15)
    {
      v25 = v15;
    }

    else
    {
      v25 = &stru_1F2C4A680;
    }

    v57[2] = v25;
    v26 = getML3TrackPropertyPodcastExternalGUID();
    v56[3] = v26;
    if (v18)
    {
      v27 = v18;
    }

    else
    {
      v27 = &stru_1F2C4A680;
    }

    v57[3] = v27;
    v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:v56 count:4];
    v29 = [v28 mutableCopy];

    if (v16)
    {
      v30 = getML3TrackPropertyFeedURL();
      [v29 setObject:v16 forKeyedSubscript:v30];
    }

    v31 = getML3TrackPropertyFeedURL();
    v55[0] = v31;
    v32 = getML3TrackPropertyPodcastExternalGUID();
    v55[1] = v32;
    v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:2];
    v19 = ICPlaybackPositionEntityIdentifierForProperties(v33, v29);

    v13 = v50;
    if (!v19)
    {
      v34 = getML3TrackPropertyTitle();
      v54[0] = v34;
      v35 = getML3TrackPropertyArtist();
      v54[1] = v35;
      v36 = getML3TrackPropertyAlbum();
      v54[2] = v36;
      v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:3];
      v38 = v29;
      v39 = v37;
      v49 = v38;
      v19 = ICPlaybackPositionEntityIdentifierForProperties(v37, v38);

      if (v19)
      {
        v29 = v49;
      }

      else
      {
        v40 = getML3TrackPropertyTitle();
        v53[0] = v40;
        v41 = getML3TrackPropertyAlbum();
        v53[1] = v41;
        v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:2];
        v29 = v49;
        v19 = ICPlaybackPositionEntityIdentifierForProperties(v42, v49);

        if (!v19)
        {
          v43 = getML3TrackPropertyTitle();
          v52[0] = v43;
          v44 = getML3TrackPropertyArtist();
          v52[1] = v44;
          v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:2];
          v19 = ICPlaybackPositionEntityIdentifierForProperties(v45, v49);

          if (!v19)
          {
            v46 = getML3TrackPropertyTitle();
            v51 = v46;
            v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v51 count:1];
            v19 = ICPlaybackPositionEntityIdentifierForProperties(v47, v49);
          }
        }
      }
    }
  }

  else
  {
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", a3];
  }

  return v19;
}

@end